# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/lineage/config/common.mk)

ifneq ($(WITH_GMS),true)
# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg
endif

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    Eleven \
    Etar \
    ExactCalculator \
    Profiles \
    Seedvault

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif


# Customizations
PRODUCT_PACKAGES += \
    LineageNavigationBarNoHint \
    NavigationBarMode2ButtonOverlay \
    LineageNavigationBarNoHint \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
