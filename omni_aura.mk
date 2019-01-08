# Release name
PRODUCT_RELEASE_NAME := cheryl2

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_NAME=cheryl2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=razer/cheryl2/aura:8.1.0/O-MR2-RC009-RZR-181124/2009:user/release-keys \
    PRIVATE_BUILD_DESC="aura-user 8.1.0 O-MR2-RC009-RZR-181124 2009 release-keys"


# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/razer/aura/device.mk)



## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aura
PRODUCT_MODEL := Phone_2
PRODUCT_NAME := omni_aura
PRODUCT_BRAND := razer
PRODUCT_MANUFACTURER := Razer

TARGET_VENDOR := razer
