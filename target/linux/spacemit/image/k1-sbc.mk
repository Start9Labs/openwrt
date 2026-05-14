# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 Spacemit Ltd.

define Device/bananapi-f3
  DEVICE_VENDOR := Banana Pi
  DEVICE_MODEL := BPI-F3
  DEVICE_DTS_DIR := $(DTS_DIR)/spacemit
  DEVICE_DTS := k1-x_deb1
  FILESYSTEMS := squashfs
  SOC := KeyStone
  KERNEL_NAME := Image
  KERNEL_IMG := Image.itb
  KERNEL := kernel-bin | fit none $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb
  IMAGES := pack sysupgrade.img.gz
  IMAGE/pack := boot-common | sdcard-img
  IMAGE/sysupgrade.img.gz := boot-common | sdcard-img | gzip | append-metadata
endef
TARGET_DEVICES += bananapi-f3

