$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/itel/P682LPN/device.mk)

PRODUCT_DEVICE := P682LPN
PRODUCT_NAME := lineage_P682LPN
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel P682LPN
PRODUCT_MANUFACTURER := itel
