#
# Copyright (C) 2009-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=transmission-flexibity
PKG_VERSION:=2.33
PKG_RELEASE:=1

PKG_SOURCE:=transmission-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://mirrors.m0k.org/transmission/files
PKG_MD5SUM:=082217a65713ac879410c622cbe6eb26

PKG_BUILD_DIR:=$(BUILD_DIR)/transmission-$(PKG_VERSION)
PKG_FIXUP:=libtool
PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/transmission-flexibity/template
  SUBMENU:=BitTorrent
  SECTION:=net
  CATEGORY:=Network
  TITLE:=A free, lightweight BitTorrent client
  URL:=http://www.transmissionbt.com
  MAINTAINER:=Cezary Jackiewicz <cezary@eko.one.pl>
endef

define Package/transmission-daemon-flexibity
  $(call Package/transmission-flexibity/template)
  DEPENDS:=+libcurl +libopenssl +libpthread +libevent2 +librt
  MENU:=1
endef

define Package/transmission-cli-flexibity
  $(call Package/transmission-flexibity/template)
  DEPENDS:=transmission-daemon-flexibity
endef

define Package/transmission-remote-flexibity
  $(call Package/transmission-flexibity/template)
endef

define Package/transmission-web-flexibity
  $(call Package/transmission-flexibity/template)
  DEPENDS:=transmission-daemon-flexibity
endef


define Package/transmission-daemon-flexibity/description
 Transmission is a simple BitTorrent client.
 It features a very simple, intuitive interface
 on top on an efficient, cross-platform back-end.
 This package contains the daemon itself.
endef

define Package/transmission-cli-flexibity/description
 CLI utilities for transmission.
endef

define Package/transmission-remote-flexibity/description
 CLI remote interface for transmission.
endef

define Package/transmission-web-flexibity/description
 Webinterface resources for transmission.
endef

define Package/transmission-daemon-flexibity/conffiles
/etc/config/transmission
endef

CONFIGURE_VARS += \
	LIBEVENT_LIBS="$(STAGING_DIR)/usr/lib/libevent-2.0.so.5"

CONFIGURE_ARGS += \
	--enable-daemon \
	--enable-cli \
	--disable-gtk \
	--enable-largefile \
	--enable-lightweight

MAKE_FLAGS += \
	CFLAGS="$(TARGET_CFLAGS) -D_GNU_SOURCE"

define Package/transmission-daemon-flexibity/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/transmission-daemon $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) files/transmission.init $(1)/etc/init.d/transmission
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/transmission.config $(1)/etc/config/transmission
endef

define Package/transmission-cli-flexibity/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/transmission-cli \
			$(PKG_INSTALL_DIR)/usr/bin/transmission-create \
			$(PKG_INSTALL_DIR)/usr/bin/transmission-edit \
			$(PKG_INSTALL_DIR)/usr/bin/transmission-show \
			$(1)/usr/bin/
endef

define Package/transmission-remote-flexibity/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/transmission-remote $(1)/usr/bin/
endef

define Package/transmission-web-flexibity/install
	$(INSTALL_DIR) $(1)/usr/share/transmission
	$(CP) $(PKG_INSTALL_DIR)/usr/share/transmission/web $(1)/usr/share/transmission/
endef

$(eval $(call BuildPackage,transmission-daemon-flexibity))
$(eval $(call BuildPackage,transmission-cli-flexibity))
$(eval $(call BuildPackage,transmission-remote-flexibity))
$(eval $(call BuildPackage,transmission-web-flexibity))
