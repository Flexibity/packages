#
# Copyright (C) 2008-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=motion-flexibity
PKG_VERSION:=3.2.12
PKG_RELEASE:=1

PKG_SOURCE:=motion-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.lavrsen.dk/sources/motion-daily \
		@SF/motion
PKG_BUILD_DIR:=$(BUILD_DIR)/motion-$(PKG_VERSION)
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/motion-flexibity
  SECTION:=multimedia
  CATEGORY:=Multimedia
  DEPENDS:=+libjpeg +libpthread +v4l-utils +ffmpeg
  TITLE:=webcam motion sensing and logging
  URL:=http://www.lavrsen.dk/twiki/bin/view/Motion/WebHome
endef

define Package/motion-flexibity/conffiles
/etc/motion.conf
endef

CONFIGURE_ARGS+= \
	--without-jpeg-mmx \
#	--without-mysql \
#	--without-pgsql \

define Package/motion-flexibity/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/motion-dist.conf $(1)/etc/motion.conf
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/motion $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/hotplug.d/usb
	$(INSTALL_DATA) ./files/motion.hotplug $(1)/etc/hotplug.d/usb/20-motion
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/motion.init $(1)/etc/init.d/motion
	$(INSTALL_DIR) $(1)/etc/config
	$(CP) ./files/motion.config $(1)/etc/config/motion
endef

$(eval $(call BuildPackage,motion-flexibity))
