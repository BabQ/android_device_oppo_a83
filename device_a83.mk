$(call inherit-product-if-exists, vendor/oppo/a83/a83-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PATH := device/oppo/a83

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Force linking shim
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libshim_xlog.so:/system/lib64/liblog.so|libshim_xlog.so:/system/vendor/lib/hw/hwcomposer.mt6763.so|libshim_idump.so:/system/vendor/lib64/hw/hwcomposer.mt6763.so|libshim_idump.so:/system/vendor/lib/hw/camera.mt6763.so|libshim_png.so:/system/vendor/lib/hw/camera.mt6763.so|libshim_png.so

# GPS
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/gps/slp_conf:system/etc/slp_conf \
    $(DEVICE_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(DEVICE_PATH)/configs/gps/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Audio config
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Media config
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml

# Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml


# Bluetooth
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/configs/bluetooth,system/etc/bluetooth)

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    fingerprintd \
    fingerprint.mt6763


# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# Lights
PRODUCT_PACKAGES += \
    lights.mt6763

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libtinyalsa

# Audio related libs (?)
PRODUCT_PACKAGES += \
    libtinycompress \
    libtinyxml

# Basic apps
PRODUCT_PACKAGES += \
    Torch \
    Gello \
    Snap

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# LiveDisplay
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant

# GPS
PRODUCT_PACKAGES += \
    libcurl \
    libnl_2

# Mtk display
#PRODUCT_PACKAGES += \
#    librrc

# Sim app
PRODUCT_PACKAGES += Stk

# Mtk symbols & shim
PRODUCT_PACKAGES += \
    libshim_asc \
    libshim_gui \
    libshim_snd \
    libshim_ui \
    libshim_idump \
    libshim_png \
    libshim_xlog

# Power HAL
PRODUCT_PACKAGES += \
    power.default \
    power.mt6763

# Misc
PRODUCT_PACKAGES += \
    libstlport \
    librs_jni

# Build libion
PRODUCT_PACKAGES += \
    libion

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# device rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6763:root/fstab.mt6763 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6763.rc:root/init.mt6763.rc \
    $(LOCAL_PATH)/rootdir/init.mt6763.usb.rc:root/init.mt6763.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6763.rc:root/ueventd.mt6763.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6763.rc:root/init.recovery.mt6763.rc \
    $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/init.ril.rc:root/init.ril.rc \
    $(LOCAL_PATH)/rootdir/init.common_svc.rc:root/init.common_svc.rc \
    $(LOCAL_PATH)/rootdir/init.epdg.rc:root/init.epdg.rc \
    $(LOCAL_PATH)/rootdir/init.fingerprint.rc:root/init.fingerprint.rc \
    $(LOCAL_PATH)/rootdir/init.sensor.rc:root/init.sensor.rc \
    $(LOCAL_PATH)/rootdir/init.trustkernel.rc:root/init.trustkernel.rc \
    $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/init.preload.rc:root/init.preload.rc \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/multi_init.rc:root/multi_init.rc

# Telephony
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/telephony/ecc_list.xml:system/etc/ecc_list.xml \
    $(DEVICE_PATH)/configs/telephony/spn-conf.xml:system/etc/spn-conf.xml


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.allow.mock.location=1 \
    ro.telephony.ril_class=MediaTekRIL \
    ro.telephony.ril.config=fakeiccid \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4
