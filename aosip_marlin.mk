# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-carbon.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/NJH47F/4146041:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 NJH47F 4146041 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Myself5"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
