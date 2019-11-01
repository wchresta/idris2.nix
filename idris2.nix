{ pkgs ? import <nixpkgs> {}, stdenv ? pkgs.stdenv, idrisPackages ? pkgs.idrisPackages }:

let
  idris-builder = idrisPackages.with-packages (with idrisPackages; [ contrib ]);
in stdenv.mkDerivation {
  name = "idris2";
  version = "0.0.0";

  buildInputs = [ idris-builder ];

  prePatch = ''
    patchShebangs --build tests
  '';

  patches = [
    ./0000-Makefile.patch  # Deactivate network tests
  ];

  makeFlags = "PREFIX=$(out)";
  buildFlags = "idris2";

  src = pkgs.fetchFromGitHub {
    owner = "edwinb";
    repo = "Idris2";
    rev = "ab98b4d3c93a6c1da0a1592ed242a3fc5d700635";
    sha256 = "1d0w0ywibg6nzllc6i08rfmgysab4sgw4ca7nlzilrcqqlgg15xi";
  };

  meta = with stdenv.lib; {
    description = "Idris2";
    homepage = https://github.com/edwinb/Idris2;
    license = licenses.mit;
    maintainers = [ ];
  };
}

