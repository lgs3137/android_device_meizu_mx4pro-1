USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/meizu/mx4pro/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := exynos5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_SLSI_VARIANT := insignal
TARGET_SOC := exynos5430
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := m76
#TARGET_GCC_VERSION_EXP := 4.9
#TARGET_GLOBAL_CFLAGS += -mcpu=cortex-a53 -mfpu=neon -mrestrict-it -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mrestrict-it -mfloat-abi=softfp

TARGET_PREBUILT_KERNEL := device/meizu/mx4pro/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x26000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x26000000 --tags_offset 0x00000100 --dt device/meizu/mx4pro/dt.img
KERNEL_EXFAT_MODULE_NAME := "exfat"
#KERNEL_NTFS_MODULE_NAME := "ntfs"

# fix this up by examining /proc/mtd on a running device
# Recovery
#RECOVERY_VARIANT := cm
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/meizu/mx4pro/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fonten55_33x84.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/meizu/mx4pro/recovery/recovery.fstab
RECOVERY_USE_MIGRATED_STORAGE := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/backlight/lm3697_bl/max_brightness\"
RECOVERY_USE_VIRTUAL_KEY := true
#BOARD_RECOVERY_SWIPE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Assert
TARGET_OTA_ASSERT_DEVICE := mx4pro,m76

