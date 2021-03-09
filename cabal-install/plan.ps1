$pkg_name="cabal-install"
$pkg_origin="core"
$pkg_version="3.2.0.0"
$pkg_license=@("BSD-3-Clause")
$pkg_upstream_url="https://www.haskell.org/cabal/"
$pkg_description="Command-line interface for Cabal and Hackage"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_source="https://downloads.haskell.org/~cabal/cabal-install-${pkg_version}/cabal-install-${pkg_version}-x86_64-unknown-mingw32.zip"
$pkg_shasum="17778c3ade0482bc37f451eec326f8fce8fbe1f12b1d6aacb2e2b9e34786c054"

$pkg_bin_dirs=@("bin")

$pkg_build_deps=@(
    "core/ghc86"
)

function Invoke-Check {
    ./cabal.exe v1-update
    ./cabal.exe info cabal
}

function Invoke-Install {
    Copy-Item "cabal.exe" "$pkg_prefix/bin/" -Force
}
