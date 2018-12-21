# Release name
PRODUCT_RELEASE_NAME := cheryl2

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cheryl2
PRODUCT_MODEL := Phone 2
PRODUCT_NAME := omni_cheryl2
PRODUCT_BRAND := razer
PRODUCT_MANUFACTURER := razer
