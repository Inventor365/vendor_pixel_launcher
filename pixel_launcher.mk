#
# SPDX-FileCopyrightText: 2026 Neoteric OS
# SPDX-License-Identifier: Apache-2.0
#

WITH_PIXEL_LAUNCHER ?= true

ifeq ($(WITH_PIXEL_LAUNCHER),true)
PRODUCT_SOONG_NAMESPACES += \
    vendor/pixel/launcher

PRODUCT_PACKAGES += \
    NexusLauncherRelease \
    PixelLauncherOverlay \
    PixelLauncherOverlayCustom \
    PixelLauncherNoGestureHintOverlay \
    FrameworkPixelLauncherPhoneDimen

PRODUCT_COPY_FILES += \
    vendor/pixel/launcher/prebuilt/etc/pixel_launcher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_launcher.xml \
    vendor/pixel/launcher/prebuilt/etc/privapp-permissions-pixel_launcher-se.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-pixel_launcher-se.xml \
    vendor/pixel/launcher/prebuilt/etc/pixel_experience_2026_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2026_midyear.xml
endif
