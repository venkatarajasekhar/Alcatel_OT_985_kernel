
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "utils.h"
#include "tc_util.h"
#include <linux/tc_act/tc_skbedit.h>

static void
explain(void)
{
	fprintf(stderr, "Usage: ... skbedit "
			"queue_mapping QUEUE_MAPPING | priority PRIORITY \n"
			"QUEUE_MAPPING = device transmit queue to use\n"
			"PRIORITY = classID to assign to priority field\n");
}

static void
usage(void)
{
	explain();
	exit(-1);
}

static int
parse_skbedit(struct action_util *a, int *argc_p, char ***argv_p, int tca_id,
	      struct nlmsghdr *n)
{
	int argc = *argc_p;
	char **argv = *argv_p;
	int ok = 0;
	struct rtattr *tail;
	unsigned int tmp;
	__u16 queue_mapping;
	__u32 flags = 0, priority;
	struct tc_skbedit sel = { 0 };

	if (matches(*argv, "skbedit") != 0)
		return -1;

	NEXT_ARG();

	while (argc > 0) {
		if (matches(*argv, "queue_mapping") == 0) {
			flags |= SKBEDIT_F_QUEUE_MAPPING;
			NEXT_ARG();
			if (get_unsigned(&tmp, *argv, 10) || tmp > 65535) {
				fprintf(stderr, "Illegal queue_mapping\n");
				return -1;
			}
			queue_mapping = tmp;
			ok++;
		} else if (matches(*argv, "priority") == 0) {
			flags |= SKBEDIT_F_PRIORITY;
			NEXT_ARG();
			if (get_tc_classid(&priority, *argv)) {
				fprintf(stderr, "Illegal priority\n");
				return -1;
			}
			ok++;
		} else if (matches(*argv, "help") == 0) {
			usage();
		} else {
			break;
		}
		argc--;
		argv++;
	}

	if (argc) {
		if (matches(*argv, "reclassify") == 0) {
			sel.action = TC_ACT_RECLASSIFY;
			NEXT_ARG();
		} else if (matches(*argv, "pipe") == 0) {
			sel.action = TC_ACT_PIPE;
			NEXT_ARG();
		} else if (matches(*argv, "drop") == 0 ||
			matches(*argv, "shot") == 0) {
			sel.action = TC_ACT_SHOT;
			NEXT_ARG();
		} else if (matches(*argv, "continue") == 0) {
			sel.action = TC_ACT_UNSPEC;
			NEXT_ARG();
		} else if (matches(*argv, "pass") == 0) {
			sel.action = TC_ACT_OK;
			NEXT_ARG();
		}
	}

	if (argc) {
		if (matches(*argv, "index") == 0) {
			NEXT_ARG();
			if (get_u32(&sel.index, *argv, 10)) {
				fprintf(stderr, "Pedit: Illegal \"index\"\n");
				return -1;
			}
			argc--;
			argv++;
			ok++;
		}
	}

	if (!ok) {
		explain();
		return -1;
	}


	tail = NLMSG_TAIL(n);
	addattr_l(n, MAX_MSG, tca_id, NULL, 0);
	addattr_l(n, MAX_MSG, TCA_SKBEDIT_PARMS, &sel, sizeof(sel));
	if (flags & SKBEDIT_F_QUEUE_MAPPING)
		addattr_l(n, MAX_MSG, TCA_SKBEDIT_QUEUE_MAPPING,
			  &queue_mapping, sizeof(queue_mapping));
	if (flags & SKBEDIT_F_PRIORITY)
		addattr_l(n, MAX_MSG, TCA_SKBEDIT_PRIORITY,
			  &priority, sizeof(priority));
	tail->rta_len = (char *)NLMSG_TAIL(n) - (char *)tail;

	*argc_p = argc;
	*argv_p = argv;
	return 0;
}

static int print_skbedit(struct action_util *au, FILE *f, struct rtattr *arg)
{
	struct tc_skbedit *sel;
	struct rtattr *tb[TCA_SKBEDIT_MAX + 1];
	SPRINT_BUF(b1);
	__u32 *priority;
	__u16 *queue_mapping;

	if (arg == NULL)
		return -1;

	parse_rtattr_nested(tb, TCA_SKBEDIT_MAX, arg);

	if (tb[TCA_SKBEDIT_PARMS] == NULL) {
		fprintf(f, "[NULL skbedit parameters]");
		return -1;
	}

	sel = RTA_DATA(tb[TCA_SKBEDIT_PARMS]);

	fprintf(f, " skbedit");

	if (tb[TCA_SKBEDIT_QUEUE_MAPPING] != NULL) {
		queue_mapping = RTA_DATA(tb[TCA_SKBEDIT_QUEUE_MAPPING]);
		fprintf(f, " queue_mapping %u", *queue_mapping);
	}
	if (tb[TCA_SKBEDIT_PRIORITY] != NULL) {
		priority = RTA_DATA(tb[TCA_SKBEDIT_PRIORITY]);
		fprintf(f, " priority %s", sprint_tc_classid(*priority, b1));
	}

	if (show_stats) {
		if (tb[TCA_SKBEDIT_TM]) {
			struct tcf_t *tm = RTA_DATA(tb[TCA_SKBEDIT_TM]);
			print_tm(f, tm);
		}
	}

	return 0;
}

struct action_util skbedit_action_util = {
	.id = "skbedit",
	.parse_aopt = parse_skbedit,
	.print_aopt = print_skbedit,
};