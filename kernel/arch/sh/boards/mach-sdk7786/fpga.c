
#include <linux/init.h>
#include <linux/io.h>
#include <linux/bcd.h>
#include <mach/fpga.h>
#include <asm/sizes.h>

#define FPGA_REGS_OFFSET	0x03fff800
#define FPGA_REGS_SIZE		0x490

static void __iomem *sdk7786_fpga_probe(void)
{
	unsigned long area;
	void __iomem *base;

	/*
	 * Iterate over all of the areas where the FPGA could be mapped.
	 * The possible range is anywhere from area 0 through 6, area 7
	 * is reserved.
	 */
	for (area = PA_AREA0; area < PA_AREA7; area += SZ_64M) {
		base = ioremap_nocache(area + FPGA_REGS_OFFSET, FPGA_REGS_SIZE);
		if (!base) {
			/* Failed to remap this area, move along. */
			continue;
		}

		if (ioread16(base + SRSTR) == SRSTR_MAGIC)
			return base;	/* Found it! */

		iounmap(base);
	}

	return NULL;
}

void __iomem *sdk7786_fpga_base;

void __init sdk7786_fpga_init(void)
{
	u16 version, date;

	sdk7786_fpga_base = sdk7786_fpga_probe();
	if (unlikely(!sdk7786_fpga_base)) {
		panic("FPGA detection failed.\n");
		return;
	}

	version = fpga_read_reg(FPGAVR);
	date = fpga_read_reg(FPGADR);

	pr_info("\tFPGA version:\t%d.%d (built on %d/%d/%d)\n",
		bcd2bin(version >> 8) & 0xf, bcd2bin(version & 0xf),
		((date >> 12) & 0xf) + 2000,
		(date >> 8) & 0xf, bcd2bin(date & 0xff));
}