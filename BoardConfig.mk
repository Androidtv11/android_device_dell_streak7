#Board Information
TARGET_BOARD_INFO_FILE := device/dell/streak7/board-info.txt
BOARD_EGL_CFG := vendor/dell/streak7/proprietary/lib/egl/egl.cfg

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := streak7
BOARD_BUILD_BOOTLOADER := false

BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# Audio hack for streak7
BOARD_USES_AUDIO_LEGACY := true
#BOARD_USES_GENERIC_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB


#Storage Information
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6042880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 274435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 107374824
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_DATA_DEVICE := /dev/block/mmcblk3p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk3p4
BOARD_CACHE_FILESYSTEM := ext4

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := false
BOARD_VOLD_MAX_PARTITIONS := 15
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/fsl-tegra-udc/gadget/lun%/file"

#Sensors
BOARD_USES_GENERIC_INVENSENSE := false
TARGET_USES_OLD_LIBSENSORS_HAL := false

USE_E2FSPROGS := true
USE_OPENGL_RENDERER := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329_abg.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/vendor/firmware/fw_bcm4329_abg.bin nvram_path=/system/etc/wifi/nvram.txt iface_name=wlan0"
WIFI_BAND := 802_11_ABG

# GPS
BOARD_HAVE_GPS_BCM := true
TARGET_NO_RADIOIMAGE := true

#ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Use nicer font rendering
BOARD_USE_SKIA_LCDTEXT := true
SMALLER_FONT_FOOTPRINT := true

#Expiermental stuff
BOARD_USES_SECURE_SERVICES := true
BOARD_USES_OVERLAY := true
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_HAS_SDCARD_INTERNAL := true
