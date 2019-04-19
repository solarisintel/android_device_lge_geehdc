#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# AOSP 8.1 BorardConfig

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Binder API version
# TARGET_USES_64_BIT_BINDER := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=geehdc lpj=67677 user_debug=31 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/lge/msm8960
TARGET_KERNEL_CONFIG := geehdc_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage

TARGET_GCC_VERSION_ARM := 4.8
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin

BOARD_USES_ALSA_AUDIO:= true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/geehdc/bluetooth

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := geehdc
TARGET_BOARD_INFO_FILE := device/lge/geehdc/board-info.txt

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"

# Display 
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

WITH_DEXPREOPT := false

TARGET_RECOVERY_FSTAB = device/lge/geehdc/rootdir/fstab.geehdc
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_CACHEIMAGE_PARTITION_SIZE := 738197504 # 704 MByte
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.geehdc

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_USES_MEDIA_EXTENSIONS := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

DEVICE_MANIFEST_FILE := device/lge/geehdc/manifest.xml
DEVICE_MATRIX_FILE := device/lge/geehdc/compatibility_matrix.xml

# Camera
# BOARD_GLOBAL_CFLAGS                         += -DQCOM_BSP
# BOARD_USES_LEGACY_MMAP                      := true
USE_DEVICE_SPECIFIC_CAMERA                  := true
# USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY        := true
# BOARD_USES_CAMERA_FAST_AUTOFOCUS 	    := true

# Blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# loki
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/geehdc/loki

# Asserts
TARGET_OTA_ASSERT_DEVICE := geehdc,lgl21

# Hardware
BOARD_HARDWARE_CLASS := device/lge/geehdc/lineagehw

-include vendor/lge/geehdc/BoardConfigVendor.mk

# USB
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Malloc
MALLOC_SVELTE := true
# MALLOC_IMPL := dlmalloc

# SELinux policies
BOARD_SEPOLICY_DIRS += device/lge/geehdc/sepolicy

## from cm-14.1
## TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true
## from aicp-8.1 / lineage-15.1
## TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
## from cm-14.1
## TARGET_HAS_LEGACY_CAMERA_HAL1 := true
