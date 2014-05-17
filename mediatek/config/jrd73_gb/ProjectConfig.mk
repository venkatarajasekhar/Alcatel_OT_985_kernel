AUTO_ADD_GLOBAL_DEFINE_BY_NAME = MTK_LCA_SUPPORT MTK_WAPI_SUPPORT MTK_SENSOR_SUPPORT CUSTOM_KERNEL_ALSPS CUSTOM_KERNEL_MAGNETOMETER CUSTOM_KERNEL_ACCELEROMETER MTK_TVOUT_SUPPORT CUSTOM_KERNEL_GYROSCOPE MTK_BT_SUPPORT MTK_CAMERA_APP_3DHW_SUPPORT MTK_QVGA_LANDSCAPE_SUPPORT MTK_WLANBT_SINGLEANT MTK_FM_TX_SUPPORT MTK_VT3G324M_SUPPORT MTK_M4U_SUPPORT MTK_MATV_ANALOG_SUPPORT MTK_WLAN_SUPPORT MTK_BT_21_SUPPORT MTK_BT_30_SUPPORT MTK_BT_40_SUPPORT MTK_BT_FM_OVER_BT_VIA_CONTROLLER MTK_BT_PROFILE_OPP MTK_BT_PROFILE_SIMAP MTK_BT_PROFILE_PRXM MTK_BT_PROFILE_PRXR MTK_BT_PROFILE_HIDH MTK_BT_PROFILE_FTP MTK_BT_PROFILE_PBAP MTK_BT_PROFILE_MANAGER MTK_BT_PROFILE_BPP MTK_BT_PROFILE_BIP MTK_BT_PROFILE_DUN MTK_BT_PROFILE_PAN MTK_BT_PROFILE_HFP MTK_BT_PROFILE_A2DP MTK_BT_PROFILE_AVRCP MTK_BT_PROFILE_AVRCP14 MTK_BT_PROFILE_TIMEC MTK_BT_PROFILE_TIMES MTK_BT_PROFILE_MAPS MTK_BT_PROFILE_MAPC MTK_BT_PROFILE_SPP MTK_FM_SHORT_ANTENNA_SUPPORT CUSTOM_KERNEL_BAROMETER MTK_WB_SPEECH_SUPPORT HAVE_AWBENCODE_FEATURE HAVE_AACENCODE_FEATURE MTK_DUAL_MIC_SUPPORT MTK_WIFI_HOTSPOT_SUPPORT MTK_CTA_SUPPORT MTK_FM_SUPPORT MTK_GPS_SUPPORT MTK_MAV_SUPPORT HAVE_AEE_FEATURE MTK_DSPIRDBG MTK_EMMC_SUPPORT MTK_BRAZIL_CUSTOMIZATION MTK_BRAZIL_CUSTOMIZATION_CLARO MTK_BRAZIL_CUSTOMIZATION_VIVO MTK_IPV6_SUPPORT MTK_SIM_AUTHENTICATION_SUPPORT MTK_EAP_SIM_AKA



AUTO_ADD_GLOBAL_DEFINE_BY_VALUE = MTK_PLATFORM MTK_FM_CHIP MTK_BT_CHIP CUSTOM_KERNEL_MAIN_IMGSENSOR CUSTOM_KERNEL_MAIN_BACKUP_IMGSENSOR CUSTOM_KERNEL_SUB_IMGSENSOR CUSTOM_KERNEL_SUB_BACKUP_IMGSENSOR CUSTOM_KERNEL_MAIN_LENS CUSTOM_KERNEL_MAIN_BACKUP_LENS CUSTOM_KERNEL_SUB_LENS CUSTOM_KERNEL_SUB_BACKUP_LENS MTK_WLAN_CHIP MTK_FM_AUDIO MTK_GPS_CHIP MTK_COMBO_CHIP CUSTOM_KERNEL_FLASHLIGHT MTK_ATV_CHIP MTK_IME_INPUT_ENGINE MTK_IME_HANDWRITING_ENGINE MTK_MODEM_SUPPORT CUSTOM_KERNEL_LCM


AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE = LCM_WIDTH LCM_HEIGHT MTK_LCM_PHYSICAL_ROTATION MTK_SHARE_MODEM_SUPPORT MTK_SHARE_MODEM_CURRENT




#
# MTK Build System
#
BUILD_KERNEL = yes
	# default settings: yes for target; else no (e.g. emulator)
	# candidate settings: yes; no
	# used for MTK build system

BUILD_PRELOADER = no
	# default settings: yes for target; else no (e.g. emulator)
	# candidate settings: yes; no
	# used for MTK build system

BUILD_UBOOT = no
	# default settings: yes for target; else no (e.g. emulator)
	# candidate settings: yes; no
	# used for MTK build system

CUSTOM_MODEM = jrd73_gin_hspa_gemini_v2

#
# Customize for PRELOADER
#
CUSTOM_PRELOADER_CUSTOM = custom


#
# Customize for UBOOT
#
CUSTOM_UBOOT_CONFIG = inc
CUSTOM_UBOOT_DRV_SRC = drv_src
CUSTOM_UBOOT_DRV_INC = drv_inc
CUSTOM_UBOOT_LCM =  hx8357B
LCM_WIDTH = 320
LCM_HEIGHT = 480
BOOT_LOGO = hvga
#
# Customize for HAL
#
CUSTOM_HAL_AUDIOFLINGER = audio

CUSTOM_HAL_BLUETOOTH = bluetooth

CUSTOM_HAL_CAMERA = camera

CUSTOM_HAL_EEPROM = dummy_eeprom

CUSTOM_HAL_FLASHLIGHT = dummy_flashlight

# temp solution for custom folder
CUSTOM_HAL_IMGSENSOR = s5k5cagx_yuv ov7690_yuv 
CUSTOM_KERNEL_IMGSENSOR = s5k5cagx_yuv ov7690_yuv 
CUSTOM_HAL_LENS = dummy dummy
CUSTOM_KERNEL_LENS = dummy dummy

CUSTOM_HAL_MAIN_LENS = dummy

CUSTOM_HAL_MAIN_BACKUP_LENS = 

CUSTOM_HAL_SUB_LENS = dummy_lens

CUSTOM_HAL_SUB_BACKUP_LENS =

CUSTOM_HAL_MAIN_IMGSENSOR = s5k5cagx_yuv

CUSTOM_HAL_MAIN_BACKUP_IMGSENSOR = 

CUSTOM_HAL_SUB_IMGSENSOR = ov7690_yuv

CUSTOM_HAL_SUB_BACKUP_IMGSENSOR = 

CUSTOM_HAL_MATV = 

CUSTOM_HAL_MSENSORLIB = ami304

CUSTOM_HAL_COMBO = mt6620

#
# Customize for Kernel
#

CUSTOM_KERNEL_FM = mt6620

CUSTOM_KERNEL_HEADSET = accdet

CUSTOM_KERNEL_CAMERA = camera

CUSTOM_KERNEL_BATTERY = battery

CUSTOM_KERNEL_MATV = 

CUSTOM_KERNEL_CORE = src 
	# default settings: src
	# candidate settings: src
	# board configuation. .

CUSTOM_KERNEL_DCT = dct

CUSTOM_KERNEL_EEPROM = dummy_eeprom

CUSTOM_KERNEL_FLASHLIGHT = dummy_flashlight

CUSTOM_KERNEL_JOGBALL = 

CUSTOM_KERNEL_KPD = kpd
	# default settings: kpd
	# candidate settings: kpd
	# For Keypad

CUSTOM_KERNEL_LCM =  hx8357B

CUSTOM_KERNEL_LEDS = mt65xx

CUSTOM_KERNEL_OFN = ofn1090

CUSTOM_KERNEL_MAIN_LENS = dummy

CUSTOM_KERNEL_MAIN_BACKUP_LENS = 

CUSTOM_KERNEL_SUB_LENS = dummy_lens

CUSTOM_KERNEL_SUB_BACKUP_LENS =

CUSTOM_KERNEL_MAIN_IMGSENSOR = s5k5cagx_yuv

CUSTOM_KERNEL_MAIN_BACKUP_IMGSENSOR = 

CUSTOM_KERNEL_SUB_IMGSENSOR = ov7690_yuv

CUSTOM_KERNEL_SUB_BACKUP_IMGSENSOR = 

CUSTOM_KERNEL_SOUND = speaker

CUSTOM_KERNEL_TOUCHPANEL =mcs6024_proto 
	# default settings: generic
	# candidate settings: generic;eeti_pcap7200
	# select the panel used by certain project.

CUSTOM_KERNEL_USB = mt6573

CUSTOM_KERNEL_WIFI =

CUSTOM_KERNEL_RTC = rtc
        # default settings: rtc
        # candidate settings: rtc
        # For RTC

# Android sensor device
MTK_SENSOR_SUPPORT = yes

CUSTOM_KERNEL_MAGNETOMETER = mmc328x

CUSTOM_KERNEL_ACCELEROMETER = bma222

CUSTOM_KERNEL_ALSPS = tmd2771

CUSTOM_KERNEL_BAROMETER =

CUSTOM_KERNEL_GYROSCOPE = 

CUSTOM_HAL_SENSORS = sensor

CUSTOM_HAL_MSENSORLIB = mmc328x

#
# Misc
#
EVB = no
	# default settings: yes for evb; else no
	# candidate settings: yes/no
	# For EVB used

GEMINI = no
	# default settings: no
	# candidate settings: yes/no
	# For gemini;currently no projects is set gemini on

MTK_GEMINI_ENHANCEMENT = no
	# default settings: no
	# candidate settings: yes/no
	# If project could use gemini modem, this value should be yes

OPTR_SPEC_SEG_DEF = NONE
	# default settings: NONE

#
# MTK Specified Feature
#
HAVE_AEE_FEATURE = yes

HAVE_MATV_FEATURE = no

HAVE_APPC_FEATURE = no

#
# MTK Chip
#

MTK_CHIP_VER = S01
	# default settings: S01
	# candidate settings: S01
	# S01 for MT6516

MTK_FM_CHIP = MT6620_FM
	# candidate settings: AR1000_FM/MT6616_E3_FM/MT6620_FM

MTK_PLATFORM = MT6573
	# default settings: MT6516
	# candidate settings: MT6516
	# MT6516 is available

MTK_ATV_CHIP = no

MTK_WLAN_CHIP = MT6620
	# candidate settings: MT6620
	
MTK_BT_CHIP = MTK_MT6620
  # candidate settings: MTK_MT6611/MTK_MT6612/MTK_MT6616/MTK_MT6620

MTK_COMBO_CHIP = MT6620E3

#
# MTK APP
#
MTK_GALLERY3D_APP = yes

MTK_INPUTMETHOD_PINYINIME_APP = no

MTK_GALLERY_APP = no

MTK_CAMERA_APP = yes

MTK_ENGINEERMODE_APP = yes

MTK_YGPS_APP = yes

#cheng.gong modified for bug 164901, use gles20 Wallpaper application for gin2.
MTK_LIVEWALLPAPER_APP = gles20

MTK_DATADIALOG_APP = yes


MTK_FM_SUPPORT = yes

MTK_AGPS_APP = yes

MTK_ACWFDIALOG_APP = yes

MTK_ENGINEERMODE_APP = yes

MTK_LAUNCHERPLUS_APP = no

MTK_SOUNDRECORDER_APP = yes

MTK_DM_APP = no

#cheng.gong close it for jrd customization
MTK_VIDEOWIDGET_APP = no

#
# MTK SUPPORT
#

MTK_TVOUT_SUPPORT = no

MTK_SNS_SUPPORT = no

MTK_LCA_SUPPORT = no

MTK_WAPI_SUPPORT = yes

MTK_WLAN_SUPPORT = yes

MTK_BT_SUPPORT = yes

MTK_CAMERA_APP_3DHW_SUPPORT = yes

MTK_SMS_NATIONAL_LANGUAGE_SUPPORT = no

MTK_SMS_TURKISH_TABLE_ALWAYS_SUPPORT = yes

MTK_WAPPUSH_SUPPORT = yes

MTK_FM_TX_SUPPORT = no

MTK_WLANBT_SINGLEANT = no

MTK_QVGA_LANDSCAPE_SUPPORT = no

MTK_LCM_PHYSICAL_ROTATION = 0
  # set this value as 90 if the lcm is physically rotated on the device

MTK_SCREEN_OFF_WIFI_OFF = no

MTK_FM_AUDIO = FM_DIGITAL_INPUT

MTK_VT3G324M_SUPPORT = yes

MTK_M4U_SUPPORT = yes

MTK_MT519X_FM_SUPPORT = no

MTK_LOCKSCREEN_TYPE = 3
  # default=1, slide=2

MTK_NETWORK_TYPE_DISPLAY = yes

# add for IME feature
MTK_IME_HANDWRITING_ENGINE = none
MTK_IME_INPUT_ENGINE = none
MTK_IME_SUPPORT = no

MTK_IME_ENGLISH_SUPPORT = yes

MTK_IME_PINYIN_SUPPORT = yes

MTK_IME_STROKE_SUPPORT = yes

MTK_IME_ZHUYIN_SUPPORT = yes

MTK_IME_HANDWRITING_SUPPORT = yes

MTK_HEADSET_ICON_SUPPORT = yes

MTK_OMA_DOWNLOAD_SUPPORT = yes

MTK_MATV_ANALOG_SUPPORT = yes
   # For I2S, use: no
   # For Audio Line-in, use: yes

MTK_GPS_SUPPORT = yes

RESOURCE_OVERLAY_SUPPORT = no

MTK_OMACP_SUPPORT = yes

MTK_BT_30_HS_SUPPORT = yes

MTK_WCDMA_SUPPORT = yes

MTK_GPS_CHIP = MTK_GPS_MT6620

MTK_GOOGLEOTA_SUPPORT = no

MTK_DM_CMCC_SERVER_SUPPORT = no

MTK_DM_CU_SERVER_SUPPORT = no

MTK_SEARCH_DB_SUPPORT = yes

MTK_DIALER_SEARCH_SUPPORT = yes

####config BT feature###########
# please do not modify these options

MTK_BT_21_SUPPORT = yes

MTK_BT_30_SUPPORT = yes

MTK_BT_40_SUPPORT = yes

MTK_BT_FM_OVER_BT_VIA_CONTROLLER = no

MTK_BT_PROFILE_OPP = yes

MTK_BT_PROFILE_SIMAP = yes

MTK_BT_PROFILE_PRXM = yes

MTK_BT_PROFILE_PRXR = yes

MTK_BT_PROFILE_HIDH = yes

MTK_BT_PROFILE_FTP = yes

MTK_BT_PROFILE_PBAP = yes

MTK_BT_PROFILE_MANAGER = yes

MTK_BT_PROFILE_BPP = yes

MTK_BT_PROFILE_BIP = yes

MTK_BT_PROFILE_DUN = yes

MTK_BT_PROFILE_PAN = yes

MTK_BT_PROFILE_HFP = yes

MTK_BT_PROFILE_A2DP = yes

MTK_BT_PROFILE_AVRCP = yes

MTK_BT_PROFILE_AVRCP14 = yes

MTK_BT_PROFILE_TIMEC = no

MTK_BT_PROFILE_TIMES = no

MTK_BT_PROFILE_MAPS = yes

MTK_BT_PROFILE_MAPC = yes

MTK_BT_PROFILE_SPP = yes

####config BT feature end ####

MTK_WIFI_P2P_SUPPORT = no

MTK_FM_SHORT_ANTENNA_SUPPORT = no

MTK_MDLOGGER_SUPPORT = yes

#cheng.gong modify for jrd customization--begin
MTK_SNS_KAIXIN_APP = no

MTK_SNS_RENREN_APP = no

MTK_SNS_FACEBOOK_APP = no

MTK_SNS_FLICKR_APP = no
#cheng.gong --end
MTK_SNS_TWITTER_APP = no

MTK_ANDROIDFACTORYMODE_APP = yes

MTK_IPO_SUPPORT = yes

MTK_IME_FRENCH_SUPPORT = no

MTK_IME_GERMAN_SUPPORT = no

MTK_IME_SPANISH_SUPPORT = no

MTK_IME_ITALIAN_SUPPORT = no

MTK_IME_PORTUGUESE_SUPPORT = no

MTK_IME_TURKISH_SUPPORT = no

MTK_IME_MALAY_SUPPORT = no

MTK_IME_HINDI_SUPPORT = no

MTK_IME_ARABIC_SUPPORT = no

MTK_IME_THAI_SUPPORT = no

MTK_IME_VIETNAM_SUPPORT = no

MTK_IME_INDONESIAN_SUPPORT = no

MTK_FILEMANAGER_APP = yes

MTK_TTY_SUPPORT = yes

MTK_WB_SPEECH_SUPPORT = yes

MTK_WPA2PSK_SUPPORT = no

# for DRAM size setting
CUSTOM_DRAM_SIZE = 4G
	# default settings: 3G
	# candidate settings: 4G, 3G, 2G


HAVE_AWBENCODE_FEATURE = yes

MTK_NAND_PAGE_SIZE = 2K

HAVE_AACENCODE_FEATURE = yes

# Enable dual mic support
MTK_DUAL_MIC_SUPPORT = no


MTK_APKINSTALLER_APP = no

MTK_WIFI_HOTSPOT_SUPPORT = yes

MTK_CTA_SUPPORT = no

MTK_SMSREG_APP = yes

MTK_RELEASE_PACKAGE = rel_customer_basic

MTK_MFV_MPEG4_EXTRA = no

MTK_VLW_APP = no

MTK_MODEM_SUPPORT = modem_3g

MTK_RESOURCE_OPTIMIZATION = 

MTK_VIDEOPLAYER_APP = yes

MTK_INTERNAL = no

MTK_MAV_SUPPORT = yes

MTK_THEMEMANAGER_APP = no

MTK_INTERNAL_LANG_SET = no

MTK_FOTA_RELEASE = no

MTK_DM_RELEASE = no

MTK_EXLOG2MAIL_APP = no

MTK_CALENDAR_IMPORTER_APP = yes

CUSTOM_HAL_ANT = mt6620_ant_m3

MTK_IME_RUSSIAN_SUPPORT = no

MTK_MEDIA3D_APP = yes

#cheng.gong close the feature for jrd customization
MTK_WEATHER_PROVIDER_APP = no

MTK_FOTA_SUPPORT = no

MTK_DM_ENTRY_DISPLAY = no

MTK_DSPIRDBG = no

MTK_EMMC_SUPPORT = no

MTK_SEC_USBDL = ATTR_SUSBDL_ONLY_ENABLE_ON_SCHIP
MTK_SEC_CHIP_SUPPORT = yes

MTK_GALLERY_VIDEOPLAYER_APP = no

MTK_SEC_BOOT = ATTR_SBOOT_ONLY_ENABLE_ON_SCHIP

MTK_SEC_MODEM_ENCODE = yes

MTK_SEC_MODEM_AUTH = no

MTK_PHONE_VOICE_RECORDING = yes


MTK_MUSIC_LRC_SUPPORT = yes

MTK_FD_SUPPORT = yes

MTK_YMCAPROP_SUPPORT = yes
MTK_SPECIAL_FACTORY_RESET = no


MTK_SHARE_MODEM_SUPPORT = 2


MTK_SHARE_MODEM_CURRENT = 1





MTK_NEW_IPTABLES_SUPPORT = yes


MTK_RTP_OVER_RTSP_SUPPORT = yes

MTK_NFC_SUPPORT = no


MTK_BRAZIL_CUSTOMIZATION = no


MTK_BRAZIL_CUSTOMIZATION_CLARO = no


MTK_BRAZIL_CUSTOMIZATION_VIVO = no


MTK_IPV6_SUPPORT = no


MTK_SEND_RR_SUPPORT = yes


MTK_SIM_AUTHENTICATION_SUPPORT = yes
