# Inherit AOSP device configuration for passion
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common devnull stuff.
$(call inherit-product, vendor/devnull/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/devnull/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := devnull_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Extra RIL settings
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

# Extra packages
PRODUCT_PACKAGES += \
    FM \
    hcitool \
    DSPManager \
    libcyanogen-dsp \
    libFLAC

PRODUCT_COPY_FILES += \
    vendor/devnull/prebuilt/etc/hosts:system/etc/hosts \
    vendor/devnull/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/devnull/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/devnull/prebuilt/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/devnull/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/devnull/prebuilt/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/devnull/prebuilt/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/devnull/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/devnull/prebuilt/xbin/e2fsck:system/xbin/e2fsck \
    vendor/devnull/prebuilt/xbin/tune2fs:system/xbin/tune2fs \
    vendor/devnull/prebuilt/xbin/sqlite3:system/xbin/sqlite3
    
# Extra passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/devnull/overlay/passion
