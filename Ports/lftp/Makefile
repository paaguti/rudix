BuildRequires += $(LibDir)/libintl.la # gettext
BuildRequires += $(LibDir)/libreadline.a # readline

include ../../Library/GNU.mk

Title=		LFTP
Name=		lftp
Version=	4.9.2
Site=		https://lftp.yar.ru/
Source=	https://lftp.yar.ru/ftp/$(Name)-$(Version).tar.bz2
License=	GPL

# readline
CFlags += -I$(IncludeDir)
CxxFlags += -I$(IncludeDir)
LdFlags += -L$(LibDir)

GnuConfigureExtra += --with-gnutls
GnuConfigureExtra += --without-openssl
GnuConfigureExtra += --with-libiconv-prefix=/usr/local
GnuConfigureExtra += --with-libintl-prefix=/usr/local
GnuConfigureExtra += --without-modules

define after_install_hook
for x in FAQ FEATURES TODO ; do \
    install -m 644 $(SourceDir)/$$x $(InstallDir)/$(DocDir)/$(Name) ; \
done
mv $(InstallDir)/$(Prefix)/etc/lftp.conf \
    $(InstallDir)/$(Prefix)/etc/lftp.conf.default
#cd $(InstallDir)/$(LibDir)/lftp/$(Version) && \
#	for x in *.so ; do ln -sf $$x $${x%.so}.bundle ; done
endef

define test_hook
$(BinDir)/lftp --version | grep $(Version)
endef
