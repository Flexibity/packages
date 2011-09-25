include $(TOPDIR)/rules.mk

PKG_NAME:=usb-modem
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/usb-modem
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Support for mobile USB modems
  MAINTAINER:=ePoint Systems Ltd <info@epointsystem.org>
  DEPENDS:=+usb-modeswitch +hotplug2 +comgt
endef

define Package/usb-modem/description
 Support for mobile USB modems
endef

define Package/usb-modem/conffiles
/etc/hotplug.d/usb/10-usb-modem
endef

define Build/Compile
endef

define Package/usb-modem/install
	tar c -C ./files . --exclude .svn --exclude '*~' | tar x -C $(1)
endef

$(eval $(call BuildPackage,usb-modem))
