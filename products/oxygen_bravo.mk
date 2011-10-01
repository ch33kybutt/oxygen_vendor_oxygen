$(call inherit-product, device/htc/bravo/full_bravo.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_bravo
PRODUCT_BRAND := htc
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bravo BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGES += \
    FM \
    hcitool \
    Torch

PRODUCT_COPY_FILES += \
    vendor/oxygen/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2.3-Bravo
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2-$(shell date +%m%d%Y)-NIGHTLY-Bravo
endif

