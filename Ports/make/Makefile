include ../../Library/GNU.mk

Title=		GNU Make
Name=		make
Version=	4.3
Site=		$(GnuHome)/$(Name)
Source=		$(GnuMirror)/$(Name)/$(Name)-$(Version).tar.gz
License=	GPLv3

BuildRequires += $(LibDir)/libintl.a # gettext

define test_hook
$(BinDir)/make --version | grep $(Version)
endef
