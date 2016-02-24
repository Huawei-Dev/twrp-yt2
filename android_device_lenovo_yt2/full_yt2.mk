#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2016 @surdu_petru
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include all languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from rio device
$(call inherit-product, device/lenovo/yt2/yt2.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_yt2
PRODUCT_DEVICE := yt2
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := YogaTablet2
PRODUCT_MANUFACTURER := LENOVO
