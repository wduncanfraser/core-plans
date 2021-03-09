. "..\ghc\plan.ps1"

$pkg_name="ghc88"
$pkg_origin="core"
$pkg_version="8.8.4"
$pkg_license=@("BSD-3-Clause")
$pkg_upstream_url="https://www.haskell.org/ghc/"
$pkg_description="The Glasgow Haskell Compiler"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_source="https://downloads.haskell.org/~ghc/${pkg_version}/ghc-${pkg_version}-x86_64-unknown-mingw32.tar.xz"
$pkg_shasum="d185055d2c8dc3bfe5b88afd59d6877eb1e722b672d1c9649f18296e148ed71f"
$pkg_dirname="ghc-${pkg_version}"

$pkg_include_dirs=@("lib/ghc-${pkg_version}/include")

function Invoke-Install {
  foreach ($dir in @("bin","lib","mingw","perl")) {
      Copy-Item $dir "$pkg_prefix" -Recurse -Force
  }
}
