include ../../Library/GNU.mk

Title=		Rsync
Name=		rsync
Version=	3.1.1
Site=		http://samba.org/rsync/
Source=		http://samba.org/ftp/rsync/src//$(Name)-$(Version).tar.gz
License=	GPL

GnuConfigureExtra += --with-included-popt
GnuConfigureExtra += --with-rsyncd-conf=$(Prefix)/etc

PatchLevel = -p1
define prep_post_hook
cd $(BuildDir) && ./prepare-source
endef

define after_install_hook
cd $(InstallDir)/$(BinDir) ; ln -sf rsync rsync3
cd $(InstallDir)/$(Prefix)/share/man/man1 ; ln -sf rsync.1 rsync3.1
cd $(InstallDir)/$(Prefix)/share/man/man5 ; ln -sf rsyncd.conf.5 rsyncd3.conf.5
endef

define test_hook
$(BinDir)/rsync --version | grep $(Version)
endef
