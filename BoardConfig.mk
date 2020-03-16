
# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES :=true


TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8937

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

#Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT := cortex-a53


# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom androidboot.memcg=true user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_PREBUILT_KERNEL := device/Vsmart/PQ4001/zImage-dtb

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4 

# TWRP specific build flags
TW_DEVICE_VERSION := 1_thinhx2
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_MAX_BRIGHTNESS := 255
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"

#speed up wipe
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
