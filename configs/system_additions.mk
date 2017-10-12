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

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aquarios/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aquarios/prebuilt/addon.d/50-aquarios.sh:system/addon.d/50-aquarios.sh \
    vendor/aquarios/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aquarios/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh 

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true
