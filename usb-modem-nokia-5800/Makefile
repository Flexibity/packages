include $(TOPDIR)/rules.mk

PKG_NAME:=usb-modem-nokia-5800
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/usb-modem-nokia-5800
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Support for NOKIA 5800 mobile phone tethering
  MAINTAINER:=ePoint Systems Ltd <info@epointsystem.org>
  DEPENDS:=+usb-modem
endef

define Package/usb-modem-nokia-5800/description
 Support for NOKIA 5800 mobile phone tethering
endef

define Package/usb-modem-nokia-5800/conffiles
/etc/usb-modem.d/421/154/100
endef

define Build/Compile
endef

define Package/usb-modem-nokia-5800/install
	tar c -C ./files . --exclude .svn --exclude '*~' | tar x -C $(1)
endef

$(eval $(call BuildPackage,usb-modem-nokia-5800))
