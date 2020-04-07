# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="MonadCatchIO-transformers"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Monad-transformer compatible version of the Control.Exception module"
HOMEPAGE="http://hackage.haskell.org/package/MonadCatchIO-transformers"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/monads-tf-0.1:=[profile?] <dev-haskell/monads-tf-0.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	cabal_chdeps \
		'base < 4.9' 'base' \
		'transformers >= 0.2 && < 0.5' 'transformers >= 0.2'
}
