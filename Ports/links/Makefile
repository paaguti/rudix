include ../../Library/GNU.mk
BuildRequires += $(LibDir)/libintl.la	# gettext
# BuildRequires += $(LibDir)/libssl.la	# openssl

Title=		Links
Name=		links
Version=	2.19
Site=		http://links.twibright.com/
Source=		http://links.twibright.com/download/$(Name)-$(Version).tar.bz2
License=	GPLv2

#
# try to use ssl provided by macOS
#
GnuConfigureExtra += --with-ssl=/usr
GnuConfigureExtra += --without-libevent

define test_hook
$(BinDir)/links -version | grep $(Version)
endef
