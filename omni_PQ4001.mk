# Release name
PRODUCT_RELEASE_NAME := PQ4001

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := PQ4001
PRODUCT_NAME := omni_PQ4001
PRODUCT_BRAND := Vsmart
PRODUCT_MODEL := Vsmart Joy 1
PRODUCT_MANUFACTURER := Vsmart
