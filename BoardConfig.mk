# config.mk
#
# Product-specific compile-time definitions.
#
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := viper
TARGET_OTA_ASSERT_DEVICE := viper,SCH-I110

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_CPU_ABI := armeabi
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

# no hardware camera
USE_CAMERA_STUB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true

BOARD_USES_ALSA_AUDIO := true

TARGET_NO_INITLOGO := true

BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 init=/linuxrc

BOARD_VOLD_MAX_PARTITIONS := 11

BOARD_BOOTIMAGE_PARTITION_SIZE := 8192000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 479232000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1089536000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8192000
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_SDCARD_INTERNAL := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/viper/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/viper/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/viper/recovery/recovery.rc

TARGET_KERNEL_SOURCE := kernel/samsung/s5pv210
TARGET_KERNEL_CONFIG := viper_cwm_defconfig
#TARGET_PREBUILT_KERNEL := device/samsung/viper/prebuilt/zImage

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun%d/file