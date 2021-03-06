# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy{,3} python{2_7,3_{4,5,6,7}} )

inherit distutils-r1

DESCRIPTION="A class library for writing nagios-compatible plugins"
HOMEPAGE="https://bitbucket.org/flyingcircus/nagiosplugin/ https://pypi.org/project/nagiosplugin/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="ZPL"
SLOT="0"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	esetup.py test
}
