# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 Spacemit Ltd.
#
include $(TOPDIR)/rules.mk

ARCH:=riscv64
BOARD:=spacemit
BOARDNAME:=Spacemit RISC-V Chipsets
FEATURES:=ext4
KERNELNAME:=Image dtbs
SUBTARGETS:=k1-nas k1-sbc

KERNEL_PATCHVER:=6.6

INTERNAL_ENV:=$(shell echo $${OPENWRT_INTERNAL_ENV})
ifeq ($(INTERNAL_ENV), yes)
CONFIG_EXTERNAL_KERNEL_TREE=$(TOPDIR)/../bsp-src/linux-6.6
CONFIG_KERNEL_GIT_CLONE_URI=""
else
CONFIG_KERNEL_GIT_CLONE_URI:=https://github.com/spacemit-com/linux-6.6.git
CONFIG_KERNEL_GIT_REF:=k1-bl-v2.2.9-release
CONFIG_KERNEL_GIT_LOCAL_REPOSITORY:=""
endif

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += mkf2fs e2fsprogs

define Target/Description
	Build firmware images for the SpaceMit K1 boards
endef

$(eval $(call BuildTarget))
