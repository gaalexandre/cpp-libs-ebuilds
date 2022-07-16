# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_ECLASS=cmake
inherit cmake

inherit git-r3
EGIT_REPO_URI="https://github.com/boost-ext/ut.git"
SRC_URI=""

DESCRIPTION="Ebuild for boost-ext/ut test framework"
HOMEPAGE="https://github.com/boost-ext/ut"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="amd64"

RDEPEND=""
DEPEND="${RDEPEND}"

PROPERTIES+="live"

src_configure() {
	local mycmakeargs=(
		-DINCLUDE_INSTALL_DIR=include/
	)
	cmake_src_configure
}
