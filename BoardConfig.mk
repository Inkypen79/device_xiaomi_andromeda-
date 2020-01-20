#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
-include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/andromeda

# Assert
TARGET_OTA_ASSERT_DEVICE := andromeda

# Kernel
TARGET_KERNEL_CONFIG := andromeda_defconfig

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# Inherit from the proprietary version
-include vendor/xiaomi/andromeda/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
