ifeq (disco_hammerhead,$(TARGET_PRODUCT))

# Screen resolution
TARGET_SCREEN_RES := 1920x1080

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LVY48F/2168849:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LVY48F 2168849 release-keys"

endif
