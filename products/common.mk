#
# Set ro.modversion
#
ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=OxygeN1mod-$(shell date +%Y.%m.%d)
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=OxygeN1mod-TEST-$(shell date +%Y.%m.%d)
endif

PRODUCT_PROPERTY_OVERRIDES += ro.rommanager.developerid=adamg

# Used by BusyBox
ifneq ($(BOARD_KERNEL_MODULES_DIR),)
KERNEL_MODULES_DIR:=$(BOARD_KERNEL_MODULES_DIR)
else
KERNEL_MODULES_DIR:=/system/lib/modules
endif

# Tiny toolbox
TINY_TOOLBOX:=true

# Build packages
PRODUCT_PACKAGES += \
    CMScreenshot \
    Superuser \
    Torch

# Build binaries
PRODUCT_PACKAGES += \
    screenshot \
    su
     
#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Sceptrum.ogg \
    ro.config.notification_sound=Castor.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    persist.adb.notify=0

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/devnull/overlay

PRODUCT_COPY_FILES += \
    vendor/devnull/prebuilt/etc/hosts:system/etc/hosts \
    vendor/devnull/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/devnull/prebuilt/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/devnull/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/devnull/prebuilt/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/devnull/prebuilt/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/devnull/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/devnull/prebuilt/xbin/e2fsck:system/xbin/e2fsck \
    vendor/devnull/prebuilt/xbin/tune2fs:system/xbin/tune2fs

# Google Apps
$(call inherit-product, vendor/google/gapps.mk)

# T-Mobile Theme Engine
$(call inherit-product, vendor/devnull/products/themes.mk)
