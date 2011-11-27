
include $(TOPDIR)/rules.mk

PKG_NAME:=perl-libterm-readkey
PKG_VERSION:=2.14
PKG_RELEASE:=1
PKG_MD5SUM:=d8ed4c533350c2e8724c70c103a1a01f

PKG_SOURCE_URL:=http://search.cpan.org/CPAN/authors/id/K/KJ/KJALB/
PKG_SOURCE:=TermReadKey-$(PKG_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/TermReadKey-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/../feeds/packages/lang/perl/perlmod.mk

define Package/perl-libterm-readkey
SUBMENU:=Perl
SECTION:=lang
CATEGORY:=Languages
TITLE:=A perl module for simple terminal control
URL:=http://search.cpan.org/dist/TermReadKey/
DEPENDS:=perl
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-libterm-readkey/install
	$(call perlmod/Install,$(1),Term/ReadKey.pm auto/Term/ReadKey)
endef


$(eval $(call BuildPackage,perl-libterm-readkey))

