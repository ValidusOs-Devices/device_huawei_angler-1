# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit some common validus stuff.
$(call inherit-product, vendor/validus/config/common.mk)
$(call inherit-product, vendor/validus/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := validus_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G48C/4104010:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G48C 4104010 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Dustin Rinne (f100cleveland)"
