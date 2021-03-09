source "$(dirname "${BASH_SOURCE[0]}")/../ghc/plan.sh"

pkg_name=ghc810
pkg_origin=core
pkg_version=8.10.4
pkg_license=('BSD-3-Clause')
pkg_upstream_url="https://www.haskell.org/ghc/"
pkg_description="The Glasgow Haskell Compiler"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source="http://downloads.haskell.org/~ghc/${pkg_version}/ghc-${pkg_version}-src.tar.xz"
pkg_shasum="52af871b4e08550257d720c2944ac85727d0b948407cef1bebfe7508c224910e"
pkg_dirname="ghc-${pkg_version}"

pkg_include_dirs=("lib/ghc-${pkg_version}/include")
