$(call inherit-product, device/google/sprout8/sprout8.mk)

# Use Optimizations?
USE_OPTIMIZATIONS := true

# Enable this if this is a very very old device
USE_LEGACY_GCC := false

# Common PX stuff
$(call inherit-product, vendor/px/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1/LMY47O/1783956:user/release-keys PRIVATE_BUILD_DESC="sprout-user 5.1 LMY47O 1783956 release-keys"

PRODUCT_NAME := px_sprout8
PRODUCT_DEVICE :=sprout8
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="sprout8"
