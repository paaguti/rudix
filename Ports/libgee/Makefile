include ../../Library/GNU.mk

Title=		Libgee
Name=		libgee
Version=	0.20.1
Site=		https://rudix.org/
Source=		https://download.gnome.org/sources/libgee/0.20/libgee-0.20.1.tar.xz
License=        GPL

define test_hook
$(BinDir)/libgee --version | grep $(Version)
endef
