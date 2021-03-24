# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cebu device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := cebu
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_cebu
PRODUCT_MODEL := moto g(9) power

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := cebu
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cebu_retail-user 10 QZC30.Q4-22-5 0db43 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/cebu_retail/cebu:10/QZC30.Q4-22-5/0db43:user/release-keys
