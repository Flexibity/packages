include $(TOPDIR)/rules.mk

PKG_NAME:=usb-modem-huawei-e175x
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/usb-modem-huawei-e175x
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Support for Huawei E175x HSPA USB Sticks
  MAINTAINER:=ePoint Systems Ltd <info@epointsystem.org>
  DEPENDS:=+usb-modem
endef

define Package/usb-modem-huawei-e175x/description
 Support for Huawei E175x HSPA USB Sticks
endef

define Package/usb-modem-huawei-e175x/conffiles
/etc/usb-modeswitch/12d1/1446/0
/etc/usb-modem.d/12d1/1001/0
endef

define Build/Compile
endef

define Package/usb-modem-huawei-e175x/install
	tar c -C ./files . --exclude .svn --exclude '*~' | tar x -C $(1)
endef

$(eval $(call BuildPackage,usb-modem-huawei-e175x))
