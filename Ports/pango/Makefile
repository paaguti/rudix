# Requires xz to uncompress the source

include ../../Library/GNU.mk

BuildRequires += $(LibDir)/libglib-2.0.la # glib

Title=		Pango
Name=		pango
Version=	1.42.4
Site=		https://www.pango.org/
Source=		https://download.gnome.org/sources/pango/1.42/$(Name)-$(Version).tar.xz
License=	LGPL

GnuConfigureExtra += --without-xft
GnuConfigureExtra += --disable-installed-tests

PatchLevel = -p1
