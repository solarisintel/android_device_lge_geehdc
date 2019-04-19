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

# This file includes all definitions that apply to ALL geehdc devices, and
# are also specific to geehdc devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/lge/geehdc/overlay

PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Wifi 
PRODUCT_PACKAGES := \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wificond \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Telephony packages
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Lights
PRODUCT_PACKAGES += \
    lights.geehdc \
    android.hardware.light@2.0-impl


# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl

# USB
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service

PRODUCT_PACKAGES += \
    charger_res_images

# http://b/15193147
# TODO(danalbert): Remove this once stlport is dead and gone.
#PRODUCT_PACKAGES +=  libstlport

# from cm-14.1
PRODUCT_COPY_FILES += \
	device/lge/geehdc/libstlport.so:system/lib/libstlport.so

PRODUCT_COPY_FILES += \
	device/lge/geehdc/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/lge/geehdc/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/lge/geehdc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
	device/lge/geehdc/wifi/init.geehdc.wifi.sh:system/etc/init.geehdc.wifi.sh

PRODUCT_COPY_FILES += \
        device/lge/geehdc/fetch-swv:system/bin/fetch-swv

PRODUCT_COPY_FILES += \
	device/lge/geehdc/configs/thermald-geehdc.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
	device/lge/geehdc/rootdir/init.geehdc.rc:root/init.geehdc.rc \
	device/lge/geehdc/rootdir/init.geehdc.usb.rc:root/init.geehdc.usb.rc \
	device/lge/geehdc/rootdir/fstab.geehdc:root/fstab.geehdc \
	device/lge/geehdc/rootdir/ueventd.geehdc.rc:root/ueventd.geehdc.rc \
	device/lge/geehdc/media/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	device/lge/geehdc/media/media_codecs.xml:system/etc/media_codecs.xml \
	device/lge/geehdc/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	device/lge/geehdc/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	device/lge/geehdc/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	device/lge/geehdc/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	device/lge/geehdc/keylayout/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	device/lge/geehdc/keychars/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	device/lge/geehdc/keychars/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	device/lge/geehdc/keychars/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	device/lge/geehdc/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
	device/lge/geehdc/configs/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml


# Bluetooth HAL
PRODUCT_PACKAGES += \
	android.hardware.bluetooth@1.0-impl \
        android.hardware.bluetooth@1.0-service \
	libbt-vendor

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196608 \
	debug.hwui.use_buffer_age=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.dualmic.config=endfire \
	persist.audio.fluence.voicecall=true

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0

# Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += \
        persist.hwc.mdpcomp.enable=true

# PRODUCT_CHARACTERISTICS := nosdcard

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960 \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.memtrack@1.0-impl

PRODUCT_PACKAGES += \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl \
	libaudio-resampler

# Voice processing
PRODUCT_PACKAGES += libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
    	device/lge/geehdc/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    	device/lge/geehdc/audio/audio_policy.conf:system/etc/audio_policy.conf \
    	device/lge/geehdc/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
	device/lge/geehdc/bluetooth/init.geehdc.bt.sh:system/etc/init.geehdc.bt.sh

PRODUCT_PROPERTY_OVERRIDES += \
    	qcom.bluetooth.soc=smd \
    	ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PACKAGES += \
    	 android.hardware.camera.provider@2.4-impl \
    	 camera.device@1.0-impl \
	 libmmcamera_interface2 \
	 libmmcamera_interface \
         camera.geehdc \

PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

PRODUCT_PROPERTY_OVERRIDES += \
	persist.media.treble_omx=false

# GPS configuration
PRODUCT_COPY_FILES += \
        device/lge/geehdc/configs/gps.conf:system/etc/gps.conf

# GPS
PRODUCT_PACKAGES += \
        libloc_eng \
        libloc_core \
        libgps.utils \
        gps.msm8960 \
        android.hardware.gnss@1.0-impl

# Bluetooth 
PRODUCT_PACKAGES += \
	bdAddrLoader \
        hci_qcom_init \
	libwfcu \
	conn_init

PRODUCT_PACKAGES += \
	keystore.msm8960 \
	android.hardware.keymaster@3.0-impl

PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf

#Unbreak videorecording with Snap
PRODUCT_PROPERTY_OVERRIDES += \
    	persist.camera.cpp.duplication=false

PRODUCT_PACKAGES += \
	power.geehdc \
	android.hardware.power@1.0-impl

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/vendor/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
    	telephony.lteOnCdmaDevice=1 \
    	telephony.lteOnGsmDevice=1 \
    	ro.telephony.default_network=10 \
        ro.ril.def.preferred.network=10 \
    	ril.subscription.types=NV,RUIM

# Carrier definitions
PRODUCT_PROPERTY_OVERRIDES += \
    	ro.cdma.home.operator.numeric=44050 \
    	ro.cdma.home.operator.alpha=KDDI 

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

PRODUCT_PACKAGES += \
	android.hardware.drm@1.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    	media.aac_51_output_enabled=true

# Sensors
PRODUCT_PACKAGES += \
	sensors.msm8960 \
	android.hardware.sensors@1.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    	android.hardware.renderscript@1.0-impl

# Sensors
PRODUCT_COPY_FILES += \
	device/lge/geehdc/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

# Sensors 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sensors.wl_dis=true \
	ro.qualcomm.sensors.smd=true

# This hw ships locked, work around it with loki
PRODUCT_PACKAGES += \
	loki_tool \
	loki.sh

# Shims
PRODUCT_PACKAGES += \
    libshim_camera \
    libshim_atomic

PRODUCT_PACKAGES += Torch

# Charger
PRODUCT_PACKAGES += \
    	charger_res_images \
        charger_touch

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/widevine/arm-generic/widevine-vendor.mk)

# dont starup first setupwizard
PRODUCT_PROPERTY_OVERRIDES += \
     ro.setupwizard.mode= disabled

