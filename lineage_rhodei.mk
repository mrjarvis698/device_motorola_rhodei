# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rhodei device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := rhodei
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_rhodei
PRODUCT_MODEL := moto g62 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := rhodei
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="rhodei_g-user 12 S2SSIS32M.18-12-4-2 3ba45 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/rhodei_g/rhodei:11/S2SSIS32.18-12-4-2/8698d:user/release-keys
