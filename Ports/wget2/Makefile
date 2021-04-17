include ../../Library/GNU.mk

Title=		Wget2
Name=		wget2
Version=	1.99.2
Site=		https://gitlab.com/gnuwget/wget2
Source=		$(GnuMirror)/wget/$(Name)-$(Version).tar.gz
License=    GPL3+

GnuConfigureExtra += --with-ssl=gnutls

define test_hook
$(BinDir)/wget2 --version | grep $(Version)
endef
