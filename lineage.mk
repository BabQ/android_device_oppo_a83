# Release name
PRODUCT_RELEASE_NAME := a83

EXTENDED_FONT_FOOTPRINT := true

# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/cmsdk_common.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/a83/device_a83.mk)

# Configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-4096-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-4096-hwui-memory.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a83
PRODUCT_NAME := lineage_a83
PRODUCT_BRAND := oppo
PRODUCT_MODEL := a83
PRODUCT_MANUFACTURER := oppo
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION   := TW

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
