include ../../Library/GNU.mk

Title=		TextAdept on curses
Name=		textadept
Version=	11.0_beta_2
Site=		https://github.com/orbitalquark/textadept
Source=		$(Site)/archive/$(Name)_$(Version).tar.gz
License=        GPL

UncompressedName=       $(Name)-$(Name)_$(Version)

define test_hook
$(BinDir)/textadept --version | grep $(Version)
endef

define build_hook
cd $(BuildDir); make -C src deps; make -C src textadept-curses
endef

define install_hook
cd $(BuildDir); make DESTDIR=`pwd`/../$(InstallDir) install_targets=../textadept-curses -C src install
endef
