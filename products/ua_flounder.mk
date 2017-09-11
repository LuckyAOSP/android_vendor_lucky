# Copyright (C) 2016 Unlegacy Android
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

# Inherit Unlegacy Android common configuration
$(call inherit-product, vendor/unlegacy/configs/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

# Undefine PRODUCT_RESTRICT_VENDOR_FILES to allow unlegacy overlays
PRODUCT_RESTRICT_VENDOR_FILES :=

PRODUCT_NAME   := ua_flounder
PRODUCT_DEVICE := flounder
PRODUCT_BRAND  := google
PRODUCT_MODEL  := Nexus 9
PRODUCT_MANUFACTURER := HTC

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=volantis \
    BUILD_FINGERPRINT=google/volantis/flounder:7.1.1/N9F27H/4108833:user/release-keys \
    PRIVATE_BUILD_DESC="volantis-user 7.1.1 N9F27H 4108833 release-keys"

