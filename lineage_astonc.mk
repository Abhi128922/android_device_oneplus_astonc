#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from astonc device
$(call inherit-product, device/oneplus/astonc/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_NAME := lineage_astonc
PRODUCT_DEVICE := astonc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJE110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1765893023217 release-keys" \
    BuildFingerprint=OnePlus/PJE110/OP5CF9L1:16/TP1A.220905.001/U.1531cfa_c5893d_c5e3d3:user/release-keys \
    DeviceName=OP5CF9L1 \
    DeviceProduct=OP5CF9L1 \
    SystemDevice=OP5CF9L1 \
    SystemName=OP5CF9L1

# AxionOS-Specific Flags
AXION_MAINTAINER := Abhi
AXION_PROCESSOR := Snapdragon_8_Gen_2_4nm
PRODUCT_NO_CAMERA:= false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_PREBUILT_BCR := true
TARGET_SUPPORTS_QUICK_TAP := true
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 16
TORCH_STR_SUPPORTED := true
BYPASS_CHARGE_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

# Scroll_Optimizer
persist.sys.perf.scroll_opt = true
persist.sys.perf.scroll_opt.heavy_app = 2
