# Copyright (C) 2017 AquariOS
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

# Include aquarios telephony configuration
include vendor/aquarios/configs/aquarios_phone.mk

# Inherit AOSP device configuration for bullhead
$(call inherit-product, device/lge/bullhead/bullhead.mk)

# Inherit gapps for bullhead
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# Bullhead overides
ifneq ($(filter bullhead,$(PRODUCT_DEVICE)),)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0 \
    ro.carrier=unknown \
    ro.opa.eligible_device=true \
    ro.storage_manager.enabled=true \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# exFAT tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat
endif

# Override AOSP build properties
PRODUCT_NAME := bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:8.1.0/OPM2.171019.029/4657601:user/test-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM2.171019.029 4657601 test-keys"
