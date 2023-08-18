# Versioning System

ifndef HAVOC_BUILD_TYPE
    HAVOC_BUILD_TYPE := Community
endif

#Build updater no matter what build type is!
PRODUCT_PACKAGES += \
    Updater


TARGET_PRODUCT_SHORT := $(subst havoc_,,$(HAVOC_BUILD_TYPE))

HAVOC_VERSION = 4.21
HAVOC_BUILD_DATE := $(shell date -u +%d-%m-%Y)
HAVOC_FINGERPRINT := Havoc-OS/v$(HAVOC_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)

ifeq ($(WITH_GAPPS),true)
    HAVOC_BUILD_VARIANT = GApps
else
    HAVOC_BUILD_VARIANT = Vanilla
endif

HAVOC_BUILD_VERSION := Havoc-OS-v$(HAVOC_VERSION)-$(shell date -u +%Y%m%d)-$(HAVOC_BUILD)-$(HAVOC_BUILD_TYPE)-$(HAVOC_BUILD_VARIANT)
