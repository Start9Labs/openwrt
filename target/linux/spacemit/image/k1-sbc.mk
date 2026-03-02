# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 Spacemit Ltd.

define Device/debX
  DEVICE_VENDOR := Spacemit
  DEVICE_MODEL :=k1-x deb board
  DEVICE_DTS_DIR:= ../dts
  DEVICE_DTS := k1-x_deb1 k1-x_MUSE-Pi 
  FILESYSTEMS := squashfs
  SOC := KeyStone
  KERNEL_NAME := Image
  KERNEL_IMG := Image.itb
  KERNEL := kernel-bin | fit none
  IMAGES := pack.zip
  IMAGE/pack.zip := $(KERNEL_IMG) | boot-common | sdcard-img | archive-zip
endef
TARGET_DEVICES += debX

