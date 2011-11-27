
include $(TOPDIR)/rules.mk

PKG_NAME:=perl-libdevice-serialport
PKG_VERSION:=1.04
PKG_RELEASE:=1
PKG_MD5SUM:=82c698151f934eb28c65d1838cee7d9e

PKG_SOURCE_URL:=http://search.cpan.org/CPAN/authors/id/C/CO/COOK/
PKG_SOURCE:=Device-SerialPort-$(PKG_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Device-SerialPort-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/../feeds/packages/lang/perl/perlmod.mk

define Package/perl-libdevice-serialport
SUBMENU:=Perl
SECTION:=lang
CATEGORY:=Languages
TITLE:=Linux-POSIX emulation of Win32-SerialPort
URL:=http://search.cpan.org/dist/Device-SerialPort/
DEPENDS:=perl
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-libdevice-serialport/install
	$(call perlmod/Install,$(1),Device/SerialPort auto/Device/SerialPort)
endef


$(eval $(call BuildPackage,perl-libdevice-serialport))

