include ../../Library/GNU.mk

Title=		NGHTTP2
Name=		nghttp2
Version=	1.42.0
Site=		https://www.nghttp2.org
Source=		https://github.com/nghttp2/nghttp2/releases/download/v$(Version)/nghttp2-$(Version).tar.bz2
License=        MIT

GnuConfigureExtra += --enable-lib-only
define test_hook
$(BinDir)/nghttp2 --version | grep $(Version)
endef
