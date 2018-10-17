# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehdc/full_geehdc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehdc
PRODUCT_NAME := lineage_geehdc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehdc_kddi_jp BUILD_FINGERPRINT=KDDI/geehdc_kddi_jp/geehdc:4.0.4/IMM76L/LGL2110d.1365073563:user/release-keys PRIVATE_BUILD_DESC="geehdc_kddi_jp-user 4.0.4 IMM76L LGL2110d.1365073563 release-keys"

