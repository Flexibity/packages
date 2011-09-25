#
# Copyright (C) 2006-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lighttpd-flexibity
PKG_VERSION:=1.4.28
PKG_RELEASE:=1

PKG_SOURCE:=lighttpd-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://download.lighttpd.net/lighttpd/releases-1.4.x/
PKG_MD5SUM:=586eb535d31ac299652495b058dd87c4
PKG_BUILD_DIR=$(BUILD_DIR)/lighttpd-$(PKG_VERSION)

PKG_FIXUP:=libtool
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/lighttpd-flexibity/Default
  SUBMENU:=Web Servers/Proxies
  SECTION:=net
  CATEGORY:=Network
  URL:=http://www.lighttpd.net/
endef

define Package/lighttpd-flexibity
  $(call Package/lighttpd-flexibity/Default)
  MENU:=1
  DEPENDS:=+libopenssl +libpcre +libpthread
  TITLE:=A flexible and lightweight web server - Flexibity version
endef

define Package/lighttpd-flexibity-mod-access
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Access restrictions module
endef

define Package/lighttpd-flexibity-mod-accesslog
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Access logging module
endef

define Package/lighttpd-flexibity-mod-alias
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Directory alias module
endef

define Package/lighttpd-flexibity-mod-auth
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Authentication module
endef

define Package/lighttpd-flexibity-mod-cgi
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=CGI module
endef

define Package/lighttpd-flexibity-mod-cml
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Cache Meta Language module
endef

define Package/lighttpd-flexibity-mod-compress
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +zlib
  TITLE:=Compress output module
endef

define Package/lighttpd-flexibity-mod-evasive
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Evasive module
endef

define Package/lighttpd-flexibity-mod-evhost
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Exnhanced Virtual-Hosting module
endef

define Package/lighttpd-flexibity-mod-expire
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Expire module
endef

define Package/lighttpd-flexibity-mod-extforward
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Extract client IP module
endef

define Package/lighttpd-flexibity-mod-fastcgi
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=FastCGI module
endef

define Package/lighttpd-flexibity-mod-flv-streaming
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=flv streaming module
endef

define Package/lighttpd-flexibity-mod-magnet
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=magnet module
endef

define Package/lighttpd-flexibity-mod-mysql-vhost
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libmysqlclient
  TITLE:=Mysql virtual hosting module
endef

define Package/lighttpd-flexibity-mod-proxy
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Proxy module
endef

define Package/lighttpd-flexibity-mod-redirect
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libpcre
  TITLE:=URL redirection module
endef

define Package/lighttpd-flexibity-mod-rewrite
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libpcre
  TITLE:=URL rewriting module
endef

define Package/lighttpd-flexibity-mod-rrdtool
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=rrdtool module
endef

define Package/lighttpd-flexibity-mod-scgi
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=SCGI module
endef

define Package/lighttpd-flexibity-mod-secdownload
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Secure and fast download module
endef

define Package/lighttpd-flexibity-mod-setenv
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Environment variable setting module
endef

define Package/lighttpd-flexibity-mod-simple-vhost
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Simple virtual hosting module
endef

define Package/lighttpd-flexibity-mod-ssi
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libpcre
  TITLE:=SSI module
endef

define Package/lighttpd-flexibity-mod-status
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=Server status display module
endef

define Package/lighttpd-flexibity-mod-trigger-b4-dl
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libpcre
  TITLE:=Trigger before download module
endef

define Package/lighttpd-flexibity-mod-userdir
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=User directory module
endef

define Package/lighttpd-flexibity-mod-usertrack
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity
  TITLE:=User tracking module
endef

define Package/lighttpd-flexibity-mod-webdav
  $(call Package/lighttpd-flexibity/Default)
  DEPENDS:=lighttpd-flexibity +libsqlite3 +libuuid +libxml2
  TITLE:=WebDAV module
endef

CONFIGURE_ARGS+= \
	--libdir=/usr/lib/lighttpd \
	--sysconfdir=/etc/lighttpd \
	--enable-shared \
	--enable-static \
	--disable-rpath \
	--without-attr \
	--without-bzip2 \
	--without-fam \
	--without-gdbm \
	--without-ldap \
	--without-lua \
	--without-memcache \
	--without-mysql \
	--with-openssl="$(STAGING_DIR)/usr" \
	--with-pcre \
	--without-valgrind \
	 $(call autoconf_bool,CONFIG_IPV6,ipv6)

CONFIGURE_VARS+= \
	PCRE_LIB="-lpcre" \

ifneq ($(SDK)$(CONFIG_PACKAGE_lighttpd-flexibity-mod-webdav),)
  CONFIGURE_ARGS+= \
	--with-webdav-locks \
	--with-webdav-props
  # XXX: needed by sqlite3 to prevent segfaults in mod_webdav.so
  CONFIGURE_VARS+= \
	LIBS="-lpthread"
else
  CONFIGURE_ARGS+= \
	--without-webdav-locks \
	--without-webdav-props
endif

define Build/Configure
$(call Build/Configure/Default)
	# XXX: override pcre (mis)detection by ./configure when cross-compiling
	echo "#define HAVE_LIBPCRE 1" >>$(PKG_BUILD_DIR)/config.h
	echo "#define HAVE_PCRE_H 1" >>$(PKG_BUILD_DIR)/config.h
endef

define Package/lighttpd-flexibity/conffiles
/etc/lighttpd/lighttpd.conf
/etc/default/lighttpd
endef

define Package/lighttpd-flexibity/install
	$(INSTALL_DIR) $(1)/etc/lighttpd
	$(INSTALL_DATA) ./files/lighttpd.conf $(1)/etc/lighttpd/
	$(INSTALL_DIR) $(1)/etc/default
	$(INSTALL_DATA) ./files/lighttpd.default $(1)/etc/default/lighttpd
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/lighttpd.init $(1)/etc/init.d/lighttpd
	$(INSTALL_DIR) $(1)/usr/lib/lighttpd
	for m in dirlisting indexfile staticfile; do \
		$(CP) $(PKG_INSTALL_DIR)/usr/lib/lighttpd/mod_$$$${m}.so $(1)/usr/lib/lighttpd/ ; \
	done
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/lighttpd $(1)/usr/sbin/
endef

define BuildPlugin
  define Package/$(1)/install
	[ -z "$(2)" ] || $(INSTALL_DIR) $$(1)/usr/lib/lighttpd
	for m in $(2); do \
		$(CP) $(PKG_INSTALL_DIR)/usr/lib/lighttpd/mod_$$$$$$$${m}.so $$(1)/usr/lib/lighttpd/ ; \
	done
  endef

  $$(eval $$(call BuildPackage,$(1)))
endef

$(eval $(call BuildPackage,lighttpd-flexibity))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-access,access))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-accesslog,accesslog))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-alias,alias))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-auth,auth))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-cgi,cgi))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-cml,cml))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-compress,compress))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-evasive,evasive))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-evhost,evhost))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-expire,expire))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-extforward,extforward))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-fastcgi,fastcgi))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-flv-streaming,flv_streaming))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-magnet,magnet))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-proxy,proxy))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-redirect,redirect))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-rewrite,rewrite))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-rrdtool,rrdtool))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-scgi,scgi))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-secdownload,secdownload))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-setenv,setenv))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-simple-vhost,simple_vhost))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-ssi,ssi))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-status,status))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-trigger-b4-dl,trigger_b4_dl))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-userdir,userdir))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-usertrack,usertrack))
$(eval $(call BuildPlugin,lighttpd-flexibity-mod-webdav,webdav))
