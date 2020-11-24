include ../../Library/GNU.mk
BuildRequires += $(LibDir)/libintl.la	# gettext
BuildRequires += $(LibDir)/libssl.la	# openssl

Title=		Links
Name=		links
Version=	2.19
Site=		http://links.twibright.com/
Source=		http://links.twibright.com/download/$(Name)-$(Version).tar.bz2
License=	GPLv2

GnuConfigureExtra += --with-ssl
GnuConfigureExtra += --without-libevent

define test_hook
$(BinDir)/links -version | grep $(Version)
endef
