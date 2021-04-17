include ../../Library/GNU.mk

BuildRequires += $(LibDir)/libintl.la # gettext


Title=		Lynx
Name=		lynx
# Version=	2.8.9
# Extra=rel.1
Version=	2.9.0
Extra= dev.6

Site=		http://lynx.invisible-island.net
Source=		https://invisible-mirror.net/archives/$(Name)/tarballs/$(Name)$(Version)$(Extra).tar.bz2

License=	GPL

UncompressedName=$(Name)$(Version)$(Extra)

GnuConfigureExtra += --enable-ipv6
GnuConfigureExtra += --with-gnutls
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
