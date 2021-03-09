. "..\ghc\plan.ps1"

$pkg_name="ghc810"
$pkg_origin="core"
$pkg_version="8.10.4"
$pkg_license=@("BSD-3-Clause")
$pkg_upstream_url="https://www.haskell.org/ghc/"
$pkg_description="The Glasgow Haskell Compiler"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_source="https://downloads.haskell.org/~ghc/${pkg_version}/ghc-${pkg_version}-x86_64-unknown-mingw32.tar.xz"
$pkg_shasum="e9175a276504c3390a5e0084954e6997d56078737dbe7158049518892cf6bfb2"
$pkg_dirname="ghc-${pkg_version}"

$pkg_include_dirs=@("lib/ghc-${pkg_version}/include")
