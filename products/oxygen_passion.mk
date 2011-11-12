$(call inherit-product, device/htc/passion/full_passion.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsupa.category=5 \
    ro.ril.mtu1472=1

PRODUCT_PACKAGES += \
    FM \
    hcitool \
    Torch \
    DSPManager \
    libcyanogen-dsp \
    libFLAC \
    VoiceDialer \
    FileManager

PRODUCT_COPY_FILES += \
    vendor/oxygen/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/oxygen/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/oxygen/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/oxygen/prebuilt/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/oxygen/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/oxygen/prebuilt/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/oxygen/prebuilt/etc/init.d/20userinit:system/etc/init.d/20userinit

# Extra passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/overlay/passion

# T-Mobile Theme Engine
$(call inherit-product, vendor/oxygen/products/themes.mk)

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=OxygeN1mod-$(shell date +%Y.%m.%d)
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=OxygeN1mod-TEST-$(shell date +%Y.%m.%d)
endif

