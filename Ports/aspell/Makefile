BuildRequires += $(LibDir)/libintl.la # gettext

include ../../Library/GNU.mk

Title=          GNU Aspell
Name=           aspell
Version=        0.60.8
Site=		http://aspell.net/
Source=		$(GnuMirror)/$(Name)/$(Name)-$(Version).tar.gz
License=	LGPL

define test_hook
$(BinDir)/aspell --version | grep $(Version)
endef
