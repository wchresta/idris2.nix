let
  pkgs = import <nixpkgs> { };
in rec {
  idris2 = pkgs.callPackage ./idris2.nix { };
}

