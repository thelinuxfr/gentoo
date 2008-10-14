# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header: $

inherit eutils gnome2

DESCRIPTION="A database application that is similar to filemakerpro, that uses popstgresql as backend"
HOMEPAGE="http://www.glom.org"

LICENSE="GPL-2"
SLOT="1"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-cpp/bakery-2.4.0
	>=dev-cpp/libgdamm-3.0.0
	>=dev-util/intltool-0.35.0
	dev-util/pkgconfig
	dev-cpp/libgtksourceviewmm
	dev-python/pygtk
	dev-cpp/gtksourceviewmm
	dev-python/gnome-python-extras
	x11-libs/goocanvas
	x11-libs/goocanvasmm
	virtual/postgresql-server"
#in dev manual RDEPEND said to be removed in future.
RDEPEND="${DEPEND}" 

pkg_setup() {
	G2CONF="--with-postgres-utils=/usr/bin/"
}

	elog ""
	elog "Finish install to http://www.glom.org/wiki/index.php?title=Initial_Postgres_Configuration"
	elog ""
