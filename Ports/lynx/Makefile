include ../../Library/GNU.mk

BuildRequires += $(LibDir)/libintl.la # gettext


Title=		Lynx
Name=		lynx
Version=	2.8.9
Site=		http://lynx.invisible-island.net
Source=		https://invisible-mirror.net/archives/$(Name)/tarballs/$(Name)$(Version)rel.1.tar.bz2

License=	GPL

UncompressedName=lynx2.8.9rel.1

GnuConfigureExtra += --enable-ipv6
GnuConfigureExtra += --with-gnutls=/usr/local # --with-ssl
GnuConfigureExtra += --with-screen=ncursesw
GnuConfigureExtra += --with-zlib --with-bzlib 
GnuConfigureExtra += --enable-scrollbar
GnuConfigureExtra += --enable-nls

define after_install_hook
mv $(InstallDir)$(Prefix)/etc/lynx.cfg $(InstallDir)$(Prefix)/etc/lynx.cfg.default
mv $(InstallDir)$(Prefix)/etc/lynx.lss $(InstallDir)$(Prefix)/etc/lynx.lss.default
for f in $(SourceDir)/CHANGES $(SourceDir)/COPYHEADER* $(SourceDir)/PROBLEMS; do \
	install -m 644 $$f  $(InstallDir)/$(DocDir)/$(Name); \
done
endef

define test_hook
$(BinDir)/lynx --version | grep $(Version)
endef
