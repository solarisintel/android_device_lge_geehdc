#
# Copyright 2013 The Android Open-Source Project
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
$(call inherit-product, device/lge/geehdc/full_geehdc.mk)

PRODUCT_NAME := aosp_geehdc

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=geehdc_kddi_jp BUILD_FINGERPRINT=KDDI/geehdc_kddi_jp/geehdc:4.0.4/IMM76L/LGL2110d.1365073563:user/release-keys \
    PRIVATE_BUILD_DESC="geehdc_kddi_jp-user 4.0.4 IMM76L LGL2110d.1365073563 release-keys"
