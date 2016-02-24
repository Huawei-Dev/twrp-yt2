#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2016 @surdu_petru
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
#-include vendor/lenovo/yt2/BoardConfigVendor.mk

TARGET_DEVICE := yt2

LOCAL_PATH := device/lenovo/yt2

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := baylake

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := x86

TARGET_GLOBAL_CFLAGS += -march=atom -mstackrealign -DUSE_SSSE3 -DUSE_SSE2 -mfpmath=sse
TARGET_BOOTLOADER_IS_2ND := true 

TARGET_BOOTLOADER_BOARD_NAME := yt2

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storge,mtp

# Kernel
BOARD_KERNEL_CMDLINE := loglevel=4 console=logk0 earlyprintk=nologger androidboot.bootmedia=sdcard androidboot.hardware=byt_t_ffrd8 watchdog.watchdog_thresh=60 androidboot.spid=0000:0000:0000:0007:0000:0005 androidboot.serialno=Baytrail5A6F4E4F oops=panic panic=40 vmalloc=172M debug_locks=0 bootboost=1 vga=current i915.modeset=1 drm.vblankoffdelay=1 acpi_backlight=vendor i915.mipi_panel_id=3 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_ARCH := x86_64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-

TARGET_KERNEL_SOURCE := kernel/lenovo/yt2
TARGET_KERNEL_CONFIG := yt2_defconfig

ANDROID_COMMON_BUILD_MK := true
TARGET_OTA_ASSERT_DEVICE := yt2,YT2

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12256784384
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

USE_INTEL_JPEGDEC := true
USE_OPENGL_RENDERER := true

#adb fix
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/pci0000:00/0000:00:16.0/dwc3-device.1/gadget/lun0/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 20

# Recovery
RECOVERY_VARIANT := twrp

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

TW_INPUT_BLACKLIST := "accelerometer"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
HAVE_SELINUX := true
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true 
TW_INCLUDE_CRYPTO := true
TW_NTFS_WA := true
TARGET_USE_MDTP := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TW_THEME := landscape_hdpi
# Fix slow wiping
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_NO_SCREEN_TIMEOUT := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_BRIGHTNESS_PATH := "/sys/class/backlight/intel_backlight/brightness"
