#
# Copyright (C) 2011 Maxim Osipov <maxim.osipov@gmail.com>
# Copyright (C) 2007-2011 OpenWrt.org
# Copyright (C) 2010 Vertical Communications
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=flexibity-sensors
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=opkg/host

include $(INCLUDE_DIR)/package.mk

define Package/flexibity-sensors
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Flexibity Connect sensors control utilities
  URL:=http://www.flexibity.com/
  VERSION:=$(PKG_RELEASE)-$(REVISION)
  DEPENDS:=+perl-libdevice-serialport +perl-libterm-readkey
endef

define Package/flexibity-sensors/conffiles
/etc/config/sensors
endef

define Package/flexibity-sensors/description
 This package contains Flexibity Connect utilities for wireless sensors control
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/flexibity-sensors/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/sensors.config $(1)/etc/config/sensors
endef

$(eval $(call BuildPackage,flexibity-sensors))
