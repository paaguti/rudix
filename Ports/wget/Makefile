BuildRequires += $(LibDir)/libintl.la   # gettext
BuildRequires += $(LibDir)/libidn.la    # libidn
BuildRequires += $(LibDir)/libgnutls.la # GNUTLS

include ../../Library/GNU.mk

Title=		GNU Wget
Name=		wget
Version=	1.21.1
Site=		$(GnuHome)/$(Name)
Source=		$(GnuMirror)/$(Name)/$(Name)-$(Version).tar.gz
License=	GPLv3

GnuConfigureExtra += --with-ssl=gnutls --with-openssl=no
GnuConfigureExtra += --with-libidn=$(Prefix)
GnuConfigureExtra += --without-included-regex

define after_install_hook
mv $(InstallDir)/$(Prefix)/etc/wgetrc \
	$(InstallDir)/$(Prefix)/etc/wgetrc.default
endef

define test_hook
$(BinDir)/wget --version | grep $(Version)
nm $(BinDir)/wget | grep -q intl
nm $(BinDir)/wget | grep -q idn
endef
