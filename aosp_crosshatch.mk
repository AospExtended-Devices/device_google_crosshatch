#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include AEX common configuration
include vendor/aosp/common.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit AOSP device configuration for crosshatch
$(call inherit-product, device/google/crosshatch/full_crosshatch.mk)

# Override AOSP build properties
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Google
PRODUCT_NAME := aosp_crosshatch
PRODUCT_DEVICE := crosshatch
PRODUCT_MODEL := Pixel 3 XL
TARGET_DEVICE := crosshatch
EXTENDED_BUILD_TYPE := OFFICIAL
