$(call inherit-product, device/samsung/crespo/full_crespo.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/overlay/crespo

PRODUCT_PACKAGES += Torch

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2.3-NS
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2-$(shell date +%m%d%Y)-NIGHTLY-NS
endif

