let
  pkgs = import <nixpkgs> { };
  fetchFromGitHub = pkgs.fetchFromGitHub;
  mkDerivation = pkgs.stdenv.mkDerivation;
  lib = pkgs.stdenv.lib;
  clang = pkgs.clang;
  chez = pkgs.chez;
in rec {
  idris2 = import ./idris2.nix {
    inherit mkDerivation fetchFromGitHub lib clang chez;
  };
}

