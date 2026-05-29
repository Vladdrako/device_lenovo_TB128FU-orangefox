#!/bin/bash
# OrangeFox Recovery 12.1 para Lenovo Tab M10 Plus Gen 3 (TB128FU)
# A/B Device with Dynamic Partitions - Qualcomm SDM680

# ===== CRITICAL A/B DEVICE FLAGS =====
export FOX_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
export FOX_VANILLA_BUILD=1

# ===== BASIC BUILD INFO =====
export OF_MAINTAINER="aless1bp"
export FOX_BUILD_DEVICE="TB128FU"

# ===== BUILD ENVIRONMENT =====
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
export BUILD_USERNAME="nobody"
export BUILD_HOSTNAME="android-build"

# ===== DEVICE ALTERNATIVES =====
export TARGET_DEVICE_ALT="TB-128FU, tb128fu, qssi"
export FOX_TARGET_DEVICES="TB-128FU, tb128fu, qssi"

# ===== MAGISKBOOT & PATCHES =====
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_PATCH_AVB20=1

# ===== SCREEN SPECIFICATIONS (Portrait 1200x2000) =====
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_SCREEN_H=2000
export OF_STATUS_H=100
export OF_CLOCK_POS=1
export OF_OPTIONS_LIST_NUM=6
export OF_HIDE_NOTCH=1

# ===== DEVICE FEATURES =====
export OF_USE_GREEN_LED=0
export OF_FLASHLIGHT_ENABLE=0
export FOX_VIRTUAL_AB_DEVICE=1
export OF_SPLASH_MAX_SIZE=130

# ===== DEVICE-SPECIFIC SETTINGS =====
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_USE_LEGACY_BATTERY_SERVICES=1
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_CHECK_OVERWRITE_ATTEMPTS=1

# ===== OTA SUPPORT =====
export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
#export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

# ===== ENCRYPTION & SECURITY =====
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_ADVANCED_SECURITY=1
export OF_KEEP_FORCED_ENCRYPTION=1

# ===== RECOVERY IMAGE FEATURES & TOOLS =====
export FOX_DELETE_AROMAFM=1
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_NANO_EDITOR=1
export OF_DONT_KEEP_LOG_HISTORY=1
export OF_NO_SPLASH_CHANGE=1

# ===== ADDITIONAL TOOLS & ADDONS =====
export FOX_USE_TWRP_BOOT_PATCH=1
export OF_ENABLE_LPUNZIP=1
export OF_ENABLE_LZMA=1
export OF_USE_SYSTEM_BASH=1
export OF_USE_LZMA_COMPRESSION=1
export OF_SKIP_MULTIUSER_SCREEN=1
export OF_DISABLE_DM_VERITY=1
export OF_DISABLE_FORCED_ENCRYPTION=1

# GNU Utilities
export FOX_USE_SED_BINARY=1                 # GNU sed binary (~200kb)
export FOX_USE_GREP_BINARY=1                # GNU grep binary (more powerful than toybox)
export FOX_USE_DATE_BINARY=1                # GNU date binary (~80kb for arm64)

# Compression Tools
export FOX_USE_LZ4_BINARY=1                 # LZ4 compression binary
export FOX_USE_ZSTD_BINARY=1                # Zstandard compression binary
export FOX_USE_XZ_UTILS=1                   # XZ Utils (lzma, xz) - ~260kb
export OF_USE_LZMA_COMPRESSION=0            # LZMA compression (slow but good)
export OF_USE_LZ4_COMPRESSION=0             # LZ4 ramdisk compression

# Additional Utilities
export FOX_USE_BUSYBOX_BINARY=1             # Standalone busybox binary (ARM64)
export FOX_REMOVE_BUSYBOX_BINARY=0          # Keep busybox
export FOX_REMOVE_ZIP_BINARY=0              # Keep zip binary
export FOX_REMOVE_AAPT=0                    # Keep aapt binary
export FOX_DELETE_INITD_ADDON=0             # Keep initd addon
export FOX_DELETE_MAGISK_ADDON=0            # Keep magisk addon

# Shell Configuration
export FOX_REMOVE_BASH=0                    # Keep bash shell
export FOX_USE_BASH_SHELL=1                 # Bash as default shell
export FOX_ASH_IS_BASH=1                    # Also available as ash
export FOX_BASH_TO_SYSTEM_BIN=0             # Keep bash in /sbin/

# Editor Configuration
export FOX_EXCLUDE_NANO_EDITOR=0            # Keep nano editor
export FOX_BUILD_BASH=0                     # Don't rebuild bash from source

# Advanced Features
export FOX_REPLACE_TOOLBOX_GETPROP=1        # Use resetprop instead of toolbox getprop
export FOX_USE_UPDATED_MAGISKBOOT=0         # Use current magiskboot version

# Filesystem & Tools
export FOX_USE_FSCK_EROFS_BINARY=1          # fsck.erofs binary for EROFS support
export FOX_USE_PATCHELF_BINARY=1            # patchelf binary (helpful utility)
export FOX_USE_DMSETUP=1                    # dmsetup for partition formatting
export OF_USE_DMCTL=1                       # dmctl as alternative

# Size Optimization (conflictual with some tools, kept minimal)
export FOX_DRASTIC_SIZE_REDUCTION=0         # Disabled to keep all tools
export FOX_EXTREME_SIZE_REDUCTION=0         # Disabled

# ===== R11+ SETTINGS =====
export FOX_ENABLE_APP_MANAGER=0
export OF_USE_TWRP_SAR_DETECT=1
export OF_QUICK_BACKUP_LIST="/boot;/data;"

# ===== BOOT TIME OPTIMIZATION =====
export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_SKIP_POST_FORMAT_RUNTIME_RESTORES=1
export FOX_SKIP_INSTALL_RECOVERY=1
export OF_SKIP_UNZIP_SPEEDUP=0

# ===== KERNEL CONFIG =====
export OF_FORCE_PREBUILT_KERNEL=1
export OF_PREBUILT_KERNEL="device/lenovo/TB128FU/prebuilt/kernel"

# ===== VIBRATION & HAPTIC FEEDBACK =====
export OF_SUPPORT_VIBRATION=1
export OF_VIBRATION_STRENGTH=80
export OF_VIBRATION_DURATION=30
export OF_BUTTON_VIBRATION=1
export OF_KEY_VIBRATION=1

# ===== BUILD IDENTIFIERS =====
# FOX_VERSION is obsolete since R11.3 - do not use
# Use FOX_MAINTAINER_PATCH_VERSION instead for custom versioning
export FOX_MAINTAINER_PATCH_VERSION="5"
export FOX_VARIANT="TB128FU"

# ===== CCACHE FOR FASTER BUILDS =====
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

# ===== LOCALE =====
export LC_ALL="C"

