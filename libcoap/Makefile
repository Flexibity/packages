#
# Copyright (C) 2012 Maxim Osipov <maxim.osipov@gmail.com>
# Copyright (C) 2008-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libcoap
PKG_VERSION:=0.1.9
PKG_RELEASE:=1

PKG_SOURCE:=libcoap-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/libcoap
PKG_BUILD_DIR:=$(BUILD_DIR)/libcoap-$(PKG_VERSION)
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libcoap
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=
  TITLE:=CoAP static library and example utilities
  URL:=http://libcoap.sourceforge.net/
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS) -I$(PKG_BUILD_DIR)" \
		CPPFLAGS="$(TARGET_CPPFLAGS) -I$(PKG_BUILD_DIR)" \
		LDFLAGS="$(TARGET_LDFLAGS) -L$(PKG_BUILD_DIR) -lcoap"
endef

define Build/Install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_BUILD_DIR)/coap.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/libcoap.a $(1)/usr/lib/
endef

define Package/libcoap/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/examples/coap-server $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/examples/coap-client $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libcoap))
