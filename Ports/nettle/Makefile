include ../../Library/GNU.mk

Title=		Nettle
Name=		nettle
Version=	3.6
Site=		http://www.lysator.liu.se/~nisse/nettle/
Source=		$(GnuMirror)/$(Name)/$(Name)-$(Version).tar.gz
License=	LGPL/GPL

LicenseFile=	$(SourceDir)/COPYING.LESSERv3

# Examples, tests and tools requires static libs
GnuConfigureExtra += --enable-static
GnuConfigureExtra += --enable-fat
GnuConfigureExtra += --enable-public-key
GnuConfigureExtra += --disable-openssl
