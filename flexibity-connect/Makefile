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

PKG_NAME:=flexibity-connect
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=opkg/host

include $(INCLUDE_DIR)/package.mk

define Package/flexibity-connect
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Flexibity Connect system utilities
  URL:=http://www.flexibity.com/
  VERSION:=$(PKG_RELEASE)-$(REVISION)
endef

define Package/flexibity-connect/conffiles
/etc/config/connect
endef

define Package/flexibity-connect/description
 This package contains Flexibity Connect specific system utilities.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/flexibity-connect/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/connect.config $(1)/etc/config/connect
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) files/google-sync.sh $(1)/usr/bin/
endef

$(eval $(call BuildPackage,flexibity-connect))
