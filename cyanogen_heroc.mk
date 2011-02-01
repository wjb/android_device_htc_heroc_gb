# Inherit AOSP device configuration for passion.
$(call inherit-product, device/htc/heroc/heroc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_heroc
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := HERO200
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRH78 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/soju/crespo:2.3.2/GRH78C/93600:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.2 GRH78C 93600 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-heroc.map

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-heroc
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC0-heroc
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC0-heroc-KANG
    endif
endif

#
# Copy cyanogen specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
