{ mkDerivation, fetchFromGitHub, lib
, clang, chez
}:

# Uses scheme to bootstrap the build of idris2

mkDerivation {
  name = "idris2";
  version = "0.2.0";

  buildInputs = [ clang chez ];

  prePatch = ''
    patchShebangs --build tests
  '';

  makeFlags = "PREFIX=$(out)";

  # The name of the main executable of pkgs.chez is `scheme`
  buildFlags = "bootstrap SCHEME=scheme";

  src = fetchFromGitHub {
    owner = "idris-lang";
    repo = "Idris2";
    rev = "840e020d8ccc332135e86f855ad78053ca15d603";
    sha256 = "1l6pdjiglwd13pf56xwzbjzyyxgz48ypfggjgsgqk2w57rmbfy90";
  };

  meta = {
    description = "Idris2";
    homepage = https://github.com/idris-lang/Idris2;
    license = lib.licenses.mit;
    maintainers = [ ];
  };
}

