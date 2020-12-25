include ../../Library/GNU.mk

Title=		Femto EMACS
Name=		femto
Version=	201225
Site=		https://github.com/paaguti/femto
Source=		$(Site)/archive/$(Version).tar.gz
License=        GPL

ReadMeFile=	$(BuildDir)/README.md

define build_hook
make -C $(BuildDir)
# Extracted from README-md
echo "COPYING:\
  Femto code is released to the public domain.\
  hughbarney@gmail.com November 2017\
" > $(BuildDir)/COPYING
endef

define after_install_hook
make DESTDIR=$(shell pwd)/$(InstallDir) -C $(BuildDir) install-docs install-extra
endef

define test_hook
$(BinDir)/femto --version | grep $(Version)
endef
