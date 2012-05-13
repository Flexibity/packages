#
# Copyright (C) 2012 Maxim Osipov <maxim.osipov@gmail.com>
#

include $(TOPDIR)/rules.mk

PKG_NAME:=flexibity
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=libftdi libusb

include $(INCLUDE_DIR)/package.mk

define Package/flexibity
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Flexibity sensors control utilities
  URL:=http://www.flexibity.com/
  VERSION:=$(PKG_RELEASE)-$(REVISION)
  DEPENDS:=+libftdi +kmod-usb-serial-ftdi
endef

define Package/flexibity/conffiles
/etc/config/sensors
endef

define Package/flexibity/description
 This package contains Flexibity utilities for wireless sensors control
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./files/tunslip6.c $(PKG_BUILD_DIR)/tunslip6.c
	$(CP) ./files/tunslip.c $(PKG_BUILD_DIR)/tunslip.c
	$(CP) ./files/bbmc.c $(PKG_BUILD_DIR)/bbmc.c
	$(CP) ./files/mc1322x-load.c $(PKG_BUILD_DIR)/mc1322x-load.c
endef

define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_CPPFLAGS) $(TARGET_LDFLAGS) -o $(PKG_BUILD_DIR)/tunslip $(PKG_BUILD_DIR)/tunslip.c
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_CPPFLAGS) $(TARGET_LDFLAGS) -o $(PKG_BUILD_DIR)/tunslip6 $(PKG_BUILD_DIR)/tunslip6.c
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_CPPFLAGS) $(TARGET_LDFLAGS) -lftdi -lusb -o $(PKG_BUILD_DIR)/mc1322x-ctl $(PKG_BUILD_DIR)/bbmc.c
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_CPPFLAGS) $(TARGET_LDFLAGS) -o $(PKG_BUILD_DIR)/mc1322x-load $(PKG_BUILD_DIR)/mc1322x-load.c
endef

define Package/flexibity/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/sensors.config $(1)/etc/config/sensors
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/tunslip.init $(1)/etc/init.d/tunslip
	$(INSTALL_BIN) ./files/tunslip6.init $(1)/etc/init.d/tunslip6
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tunslip $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tunslip6 $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mc1322x-ctl $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mc1322x-load $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib/firmware
	$(INSTALL_DIR) $(1)/usr/lib/firmware/sensors
	$(INSTALL_BIN) files/border-router.bin $(1)/usr/lib/firmware/sensors/
	$(INSTALL_BIN) files/flasher.bin $(1)/usr/lib/firmware/sensors/
endef

define Package/flexibity/postinst
#!/bin/sh
# add /etc/config/network entries
uci set network.wpan0=interface
uci set network.wpan0.type=static
uci set network.wpan0.ip6addr=aaaa::/1
uci set network.wpan0.ipaddr=192.168.119.1
uci set network.wpan0.device=/dev/ttyUSB0
uci commit network
# check if we are on real system
if [ -z "$${IPKG_INSTROOT}" ]; then
	echo "Enabling rc.d symlink for tunslip6"
	/etc/init.d/tunslip enable
	/etc/init.d/tunslip6 enable
fi
exit 0
endef

define Package/flexibity/prerm
#!/bin/sh
# check if we are on real system
if [ -z "$${IPKG_INSTROOT}" ]; then
	echo "Removing rc.d symlink for tunslip6"
	/etc/init.d/tunslip disable
	/etc/init.d/tunslip6 disable
fi
exit 0
endef

$(eval $(call BuildPackage,flexibity))

