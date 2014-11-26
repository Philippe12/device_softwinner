# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/wing-common/BoardConfigCommon.mk

# webkit/V8
ENABLE_SVG := true
SUPPORT_COMPLEX_SCRIPTS := true
ENABLE_AUTOFILL := true
ENABLE_WTF_USE_ACCELERATED_COMPOSITING := true

# image related
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

INSTALLED_KERNEL_TARGET := kernel
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := 
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824

# recovery stuff
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_wing_nck70
SW_BOARD_TOUCH_RECOVERY :=true
#TARGET_RECOVERY_UPDATER_LIBS :=

# wifi and bt configuration
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl

HOSTAPD_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl

SW_BOARD_USR_WIFI := rt2800usb
BOARD_WLAN_DEVICE := rt2800usb
BOARD_SOFTAP_DEVICE := rt2800usb
	
WIFI_DRIVER_FW_PATH_STA := /system/vendor/firmware/rt2870.bin
WIFI_DRIVER_FW_PATH_AP := /system/vendor/firmware/rt2870.bin
WIFI_DRIVER_FW_PATH_P2P := /system/vendor/firmware/rt2870.bin
WIFI_DRIVER_FW_PATH_PARAM := /sys/module/rt2800usb/parameters/fwpath

# make sure BOARD_HAVE_BLUETOOTH is true for every bt vendor
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#SW_BOARD_HAVE_BLUETOOTH_RTK := true
#SW_BOARD_HAVE_BLUETOOTH_NAME := bcm40183
#SW_BOARD_HAVE_BLUETOOTH_NAME := ap6210
