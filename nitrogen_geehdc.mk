# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/nitrogen/products/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehdc/full_geehdc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehdc
PRODUCT_NAME := nitrogen_geehdc
PRODUCT_BRAND := Android
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

