include ../../Library/GNU.mk

Title=		Curl
Name=		curl
Version=	7.76.1
Site=		https://curl.haxx.se
Source=		$(Site)/download/$(Name)-$(Version).tar.bz2
License=        GPL

#
# Built-in in MacOS (no need for OpenSSL/LibreSSL)
#
GnuConfigureExtra += --with-darwinssl
GnuConfigureExtra += --with-secure-transport
GnuConfigureExtra += --without-ssl
#
# Advanced features
#
GnuConfigureExtra += --with-nghttp2
GnuConfigureExtra += --with-ngtcp2 # --with-quiche
GnuConfigureExtra += --with-nghttp3

define test_hook
$(BinDir)/curl --version | grep $(Version)
endef
