# DEPRECATED

idris2 has been included in nixpkgs: https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/compilers/idris2/default.nix

Do not install from this repository and use the official nix-channel instead.

Just do `nix-env -iA idris2`

If that doesn't work, you might need to install it from `nixpkgs-unstable` / `nixos-unstable`.

# Idris2 nix derivation

This is a very scrappy nix derivation for [Idris2](https://github.com/edwinb/Idris2), the successor to Idris.

## What?

[Nix](https://nixos.org/nix/) is a *Purely Functional Package Manager*. A *nix derivation* is a recipe about building a certain package - similar to a `Makefile` but it defines all its dependencies. So with this nix derivation, you don't need to worry about which *Idris* version you need. The nix derivation here does that for you.

## Ok how?

* [Install nix](https://nixos.org/nix/download.html)
* Clone this repository
* `cd` into the folder containing `default.nix`
* `nix-env -f . -iA idris2`

```
$ idris2
     ____    __     _         ___
    /  _/___/ /____(_)____   |__ \
    / // __  / ___/ / ___/   __/ /     Version 0.2.0
  _/ // /_/ / /  / (__  )   / __/      https://www.idris-lang.org
 /___/\__,_/_/  /_/____/   /____/      Type :? for help

Welcome to Idris 2.  Enjoy yourself!
Main>
```

## What else?

Remember that *Idris2* is still under heavy development. **DO NOT** expect *any* of this to work at *any* time.

The present nix derivation uses the `make bootstrap SCHEME=chez` style to compile idris2 from the included bootstrap scheme.

