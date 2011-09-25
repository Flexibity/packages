include $(TOPDIR)/rules.mk

PKG_NAME:=module-init-tools
PKG_VERSION:=3.12
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.kernel.org/pub/linux/utils/kernel/module-init-tools/
PKG_MD5SUM:=c2c8ad5b5bbe7f75f1292ea22163bf28

include $(INCLUDE_DIR)/package.mk

define Package/module-init-tools
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Linux module utilities
	URL:=http://www.kernel.org/pub/linux/utils/kernel/module-init-tools/
	DEPENDS:=
endef

define Package/module-init-tools/install
	install -m0755 -d $(1)/sbin
	install -m0755 $(PKG_BUILD_DIR)/build/depmod $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/lsmod $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/rmmod $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/insmod $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/modinfo $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/modprobe $(1)/sbin/
	install -m0755 $(PKG_BUILD_DIR)/build/modindex $(1)/sbin/
endef

$(eval $(call BuildPackage,module-init-tools))
