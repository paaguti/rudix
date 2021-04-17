include ../../Library/GNU.mk

BuildRequires += $(BinDir)/pkg-config # pkg-config
BuildRequires += $(LibDir)/libintl.la # gettext
BuildRequires += $(LibDir)/libidn.la # libidn

Title=		msmtp
Name=		msmtp
Version=	1.8.15
Site=		https://marlam.de/msmtp/
Source=		https://marlam.de/msmtp/releases/msmtp-$(Version).tar.xz
License=	GPL

EnvExtra += PKG_CONFIG_PATH=/usr/lib/pkgconfig
GnuConfigureExtra += --with-ssl=gnutls

define after_install_hook
install -m 644 $(SourceDir)/doc/msmtp* $(InstallDir)/$(DocDir)/$(Name)  
endef

define test_hook
$(BinDir)/msmtp --version
endef
