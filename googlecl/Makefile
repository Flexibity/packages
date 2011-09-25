#
# Copyright (C) 2007-2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=googlecl
PKG_VERSION:=0.9.13
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://googlecl.googlecode.com/files/
PKG_MD5SUM:=83252f69fd9b7ce0720af1aabb4ebf09

PKG_BUILD_DEPENDS:=python gdata

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/googlecl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python interface to Google
  URL:=http://code.google.com/p/googlecl/
  DEPENDS:=+python +gdata
endef

define PyPackage/googlecl/filespec
+|/usr/bin/google
+|$(PYTHON_PKG_DIR)/googlecl
+|$(PYTHON_PKG_DIR)/googlecl/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/contacts
+|$(PYTHON_PKG_DIR)/googlecl/contacts/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/contacts/base.py
+|$(PYTHON_PKG_DIR)/googlecl/contacts/client.py
+|$(PYTHON_PKG_DIR)/googlecl/contacts/service.py
+|$(PYTHON_PKG_DIR)/googlecl/config
+|$(PYTHON_PKG_DIR)/googlecl/config/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/config/parser.py
+|$(PYTHON_PKG_DIR)/googlecl/base.py
+|$(PYTHON_PKG_DIR)/googlecl/finance
+|$(PYTHON_PKG_DIR)/googlecl/finance/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/finance/service.py
+|$(PYTHON_PKG_DIR)/googlecl/picasa
+|$(PYTHON_PKG_DIR)/googlecl/picasa/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/picasa/service.py
+|$(PYTHON_PKG_DIR)/googlecl/authentication.py
+|$(PYTHON_PKG_DIR)/googlecl/client.py
+|$(PYTHON_PKG_DIR)/googlecl/docs
+|$(PYTHON_PKG_DIR)/googlecl/docs/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/docs/base.py
+|$(PYTHON_PKG_DIR)/googlecl/docs/client.py
+|$(PYTHON_PKG_DIR)/googlecl/docs/service.py
+|$(PYTHON_PKG_DIR)/googlecl/service.py
+|$(PYTHON_PKG_DIR)/googlecl/blogger
+|$(PYTHON_PKG_DIR)/googlecl/blogger/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/blogger/service.py
+|$(PYTHON_PKG_DIR)/googlecl/calendar
+|$(PYTHON_PKG_DIR)/googlecl/calendar/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/calendar/date_test.py
+|$(PYTHON_PKG_DIR)/googlecl/calendar/date.py
+|$(PYTHON_PKG_DIR)/googlecl/calendar/service.py
+|$(PYTHON_PKG_DIR)/googlecl/youtube
+|$(PYTHON_PKG_DIR)/googlecl/youtube/__init__.py
+|$(PYTHON_PKG_DIR)/googlecl/youtube/service.py
+|$(PYTHON_PKG_DIR)/googlecl-0.9.13.egg-info
endef

define Build/Compile
	$(if $(Build/Compile/PyMod),,@echo Python packaging code not found.; false)
	$(call Build/Compile/PyMod,., \
		install --prefix="$(PKG_INSTALL_DIR)/usr" \
	)
endef

$(eval $(call PyPackage,googlecl))
$(eval $(call BuildPackage,googlecl))
