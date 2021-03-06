#
# Copyright (C) 2014 The Mokee OpenSource Project
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


# Architecture
TARGET_CPU_ABI 				:= armeabi-v7a
TARGET_CPU_ABI2 			:= armeabi
TARGET_CPU_SMP 				:= true
TARGET_ARCH 				:= arm
TARGET_ARCH_VARIANT 		:= armv7-a-neon
ARCH_ARM_HAVE_ARMV7A 		:= true
TARGET_CPU_VARIANT 			:= cortex-a7
ARCH_ARM_HAVE_NEON 			:= true
ARCH_ARM_HAVE_TLS_REGISTER 	:= true

# Board
TARGET_NO_RADIOIMAGE 		:= true
TARGET_BOARD_PLATFORM 		:= msm8226
TARGET_BOARD_PLATFORM_GPU 	:= qcom-adreno305
TARGET_NO_BOOTLOADER            := true
TARGET_BOOTLOADER_NAME		 := dior
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
BOARD_VENDOR 				:= xiaomi

# Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/dior/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.bootdevice=msm_sdcc.1 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x2000000 --dt device/xiaomi/dior/dt.img

#Sepolicy
include device/qcom/sepolicy/sepolicy.mk

# Init
TARGET_NO_INITLOGO := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# TWRP
BOARD_SUPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4  := true
TARGET_USERIMAGES_USE_F2FS  := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 160
TARGET_RECOVERY_QCOM_RTC_FIX := true
