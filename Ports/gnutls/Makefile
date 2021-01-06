include ../../Library/GNU.mk

Title=		GnuTLS
Name=			gnutls
Version=	3.7.0
# take the minor version number as suffix and replace it away
VMajor=	$(patsubst %$(suffix $(Version)),v%,$(Version))
Site=		https://gnutls.org
Source=		https://www.gnupg.org/ftp/gcrypt/gnutls/$(VMajor)/gnutls-$(Version).tar.xz
License=	LGPLv2.1+

GnuConfigureExtra += --with-included-libtasn1
GnuConfigureExtra += --disable-tools
GnuConfigureExtra += --disable-guile

ReadMeFile=	$(SourceDir)/README.md
LicenseFile=	$(SourceDir)/doc/COPYING.LESSER
