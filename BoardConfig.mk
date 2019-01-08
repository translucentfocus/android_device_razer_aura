DEVICE_TREE := device/razer/aura

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := cheryl2
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_QCOM_HARDWARE := true

# Platform
TARGET_BOARD_PLATFORM := sdm845
TARGET_BOARD_PLATFORM_GPU := qcom-adreno630

#Added on other SDM845 devices for crypto support
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4


# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := armv8-a

# Kernel
#   Needed to build from source
#   TARGET_KERNEL_SOURCE := kernel/razer/sdm845
#   TARGET_KERNEL_CONFIG := twrp_aura_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/Image.gz-dtb

# Boot image
#TODO verify Kernel CMDLine
# pulled from stock Razer Phone 2 boot.img with Android Image Kitchen
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA84000 androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 androidboot.selinux=permissive
# Verified below from extracted boot.img using Android Image Kitchen ramdisk_offset needed to be updated
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Workaround for error copying vendor files to recovery ramdisk
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Android Verified Boot
# BOARD_AVB_ENABLE := false
# BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Partitions
# Updated based off CalebQ42's sizes
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 50132250624
BOARD_FLASH_BLOCK_SIZE := 262144

# These may need to be filled in at some point
# BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
# BOARD_RAMDISK_OFFSET     := 0x02000000

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# A/B device flags
# set to false for recovery only image (source: https://forum.xda-developers.com/showpost.php?p=32965389&postcount=3)
# TARGET_NO_RECOVERY := false
# set to false for recovery only image (source: https://forum.xda-developers.com/showpost.php?p=32965389&postcount=3)
# BOARD_USES_RECOVERY_AS_BOOT := false
# Razer Phone 2 does use system root for image... not sure if this should be set or not though
# BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
# set to on (source: https://forum.xda-developers.com/showpost.php?p=32965389&postcount=3)
# Dees Troy commented all of the above out as part of his work to enable crypto
# AB_OTA_UPDATER := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
# TW_BRIGHTNESS_PATH := "/sys/devices/soc/c900000.qcom\x2cmdss_mdp/c900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 155
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
BOARD_SUPPRESS_SECURE_ERASE := true
# Stock kernel sometimes crashes when we toggle MTP
TW_EXCLUDE_MTP := true
# Just for building recovery
ALLOW_MISSING_DEPENDENCIES:=true

# We can use the factory reset button combo to enter recovery safely
TW_IGNORE_MISC_WIPE_DATA := true

# exFAT drivers NOT included in stock aura kernel
TW_NO_EXFAT_FUSE := false

# Encryption support
# TW_INCLUDE_CRYPTO := true
# TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
# TARGET_USES_LOGD := true
