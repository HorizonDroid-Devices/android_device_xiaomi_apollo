#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common CHERISH stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Cherish Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_WIFI_EXT := true
PRODUCT_CHARACTERISTICS := nosdcard
TARGET_DISABLE_EPPE := true

# Cherish props
CHERISH_BUILD_TYPE=OFFICIAL
CHERISH_MAINTAINER := Finnaib
CHERISH_CHIPSET := Snapdragon865
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2400

PRODUCT_NAME := cherish_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 12 RKQ1.211001.001 V14.0.4.0.SJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V14.0.4.0.SJDMIXM:user/release-keys

