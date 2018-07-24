# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

### Enhanced NFC
##$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehdc/geehdc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehdc
PRODUCT_NAME := cm_geehdc
PRODUCT_BRAND := lge
PRODUCT_MODEL := L-01E
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehdc_dcm_jp BUILD_FINGERPRINT=lge/geehdc_dcm_jp/geehdc:4.0.4/IMM76L/.1363085524:user/release-keys

# Enable Torch
PRODUCT_PACKAGES += Torch
