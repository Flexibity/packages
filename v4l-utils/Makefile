# 
# Copyright (C) 2011 Maxim Osipov <maxim.osipov@gmail.com>
# Copyright (C) 2009 David Cooper <dave@kupesoft.com>
# Copyright (C) 2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=v4l-utils
PKG_VERSION:=0.8.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://linuxtv.org/downloads/v4l-utils/

include $(INCLUDE_DIR)/package.mk

define Package/v4l-utils
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Video 4 Linux utilities
  URL:=http://people.atrpms.net/~hdegoede/
  DEPENDS:=+libpthread @!LINUX_2_4 +argp-standalone +argtable +libjpeg
endef

define Package/v4l-utils/description
  v4l-utils is a collection of libraries which adds a thin abstraction layer on
  top of video4linux2 devices. The purpose of this (thin) layer is to make it
  easy for application writers to support a wide variety of devices without
  having to write separate code for different devices in the same class. libv4l
  consists of 3 different libraries: libv4lconvert, libv4l1 and libv4l2.

  libv4l1 offers the (deprecated) v4l1 API on top of v4l2 devices, independent
  of the drivers for those devices supporting v4l1 compatibility (which many
  v4l2 drivers do not).

  libv4l2 offers the v4l2 API on top of v4l2 devices, while adding for the
  application transparent libv4lconvert conversion where necessary.
endef

TARGET_CFLAGS += $(FPIC)

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" PREFIX="/usr" \
		$(CONFIGURE_VARS) \
		all install
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" PREFIX="/usr" \
		$(CONFIGURE_VARS) \
		LINKTYPE="static" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libv4l{1,2,convert}.{a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libv4l{1,2,convert}.pc $(1)/usr/lib/pkgconfig/
endef

define Package/v4l-utils/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libv4l{1,2,convert}.so.* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib/libv4l
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libv4l/v4l{1compat,2convert}.so $(1)/usr/lib/libv4l
endef

$(eval $(call BuildPackage,v4l-utils))

