include ../../Library/GNU.mk

BuildRequires += $(BinDir)/pkg-config # pkg-config
BuildRequires += $(LibDir)/libintl.la # gettext
BuildRequires += $(LibDir)/libidn.la # libidn

Title=		mpop
Name=		mpop
Version=	1.4.13
Site=		https://marlam.de/mpop
Source=		$(Site)/releases/mpop-$(Version).tar.xz
License=	GPL

EnvExtra += PKG_CONFIG_PATH=/usr/lib/pkgconfig
GnuConfigureExtra += --with-tls=gnutls --with-macosx-keyring

define after_install_hook
install -m 644 $(SourceDir)/doc/mpop* $(InstallDir)/$(DocDir)/$(Name)  
endef

define test_hook
$(BinDir)/mpop --version
endef
