include ../../Library/GNU.mk

Title=		OpenSSL
Name=		openssl
Version=	1.1.1i
Site=		https://www.openssl.org
Source=		https://www.openssl.org/source/$(Name)-$(Version).tar.gz
License=        GPL

ReadMeFile=  $(SourceDir)/README
LicenseFile= $(SourceDir)/LICENSE

define build_hook
cd $(BuildDir) && ./config enable-ec_nistp_64_gcc_128
endef
