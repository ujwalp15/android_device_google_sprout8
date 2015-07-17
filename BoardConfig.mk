#
# Copyright (C) 2015 The CyanogenMod Project
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
LOCAL_PATH := device/google/sprout8

# inherit from common sprout repo
-include device/google/sprout-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := sprout,sprout8

TARGET_RECOVERY_FSTAB := device/google/sprout8/rootdir/root/fstab.sprout

# kernel stuff
ifneq ($(strip $(USE_SABER_INLINE_KERNEL_BUILDING)),true)
TARGET_KERNEL_CONFIG := cyanogenmod_sprout_defconfig
TARGET_KERNEL_SOURCE := kernel/mediatek/sprout
endif
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
