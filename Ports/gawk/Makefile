BuildRequires += $(LibDir)/libintl.la # gettext
BuildRequires += $(LibDir)/libreadline.a # readline

include ../../Library/GNU.mk

Title=		GNU awk
Name=		gawk
Version=	4.2.1
#Version=	5.0.1
Site=		$(GnuHome)/$(Name)
Source=		$(GnuMirror)/$(Name)/$(Name)-$(Version).tar.xz
License=	GPLv3

GnuConfigureExtra += --with-readline=/usr/local

define after_install_hook
rm -f $(InstallDir)/$(BinDir)/*-$(Version)
endef

define test_hook
$(BinDir)/gawk --version | grep $(Version)
endef
