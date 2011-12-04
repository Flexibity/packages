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
  DEPENDS:=+perl +perl-libdevice-serialport +perl-libterm-readkey
endef

define Package/flexibity-sensors/conffiles
/etc/config/sensors
endef

define Package/flexibity-sensors/description
 This package contains Flexibity Connect utilities for wireless sensors control
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./files/tunslip6.c $(PKG_BUILD_DIR)/tunslip6.c
endef

define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/tunslip6 $(PKG_BUILD_DIR)/tunslip6.c
endef

define Package/flexibity-sensors/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/sensors.config $(1)/etc/config/sensors
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/tunslip6.init $(1)/etc/init.d/tunslip6
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tunslip6 $(1)/usr/bin/
	$(INSTALL_BIN) files/mc1322x-reset.sh $(1)/usr/bin/
	$(INSTALL_BIN) files/mc1322x-erase.sh $(1)/usr/bin/
	$(INSTALL_BIN) files/mc1322x-load.pl $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib/firmware
	$(INSTALL_DIR) $(1)/usr/lib/firmware/sensors
	$(INSTALL_BIN) files/border-router.bin $(1)/usr/lib/firmware/sensors/
	$(INSTALL_BIN) files/flasher.bin $(1)/usr/lib/firmware/sensors/
endef

$(eval $(call BuildPackage,flexibity-sensors))
