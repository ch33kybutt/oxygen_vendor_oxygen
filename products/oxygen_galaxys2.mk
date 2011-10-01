$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_galaxys2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxys2
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGES += Torch

PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2.3-GalaxyS2
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2-$(shell date +%m%d%Y)-NIGHTLY-GalaxyS2
endif

