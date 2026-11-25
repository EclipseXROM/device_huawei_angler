# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM7.181205.001 5080180 release-keys"

BUILD_FINGERPRINT := google/angler/angler:8.1.0/OPM7.181205.001/5080180:user/release-keys

# EclipseX common product layer (first-party suite, EclipseX Home, debloat).
# -if-exists so this file also parses before `repo sync` pulls common.
$(call inherit-product-if-exists, vendor/eclipsex/common/eclipsex.mk)
