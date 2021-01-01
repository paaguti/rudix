include ../../Library/GNU.mk

Title=		Jansson
Name=		jansson
Version=	2.13.1
Site=		https://digip.org/jansson
Source=		$(Site)/releases/$(Name)-$(Version).tar.bz2
License=        MIT
ReadMeFile=	$(BuildDir)/README.rst
LicenseFile=	$(BuildDir)/LICENSE

define test_hook
$(BinDir)/jansson --version | grep $(Version)
endef
