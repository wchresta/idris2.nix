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
    / // __  / ___/ / ___/   __/ /     Version 0.0.0
  _/ // /_/ / /  / (__  )   / __/      http://www.idris-lang.org            
 /___/\__,_/_/  /_/____/   /____/                                           

Welcome to Idris 2.  Enjoy yourself!
```

## What else?

Remember that *Idris2* is still under heavy development. **DO NOT** expect *any* of this to work at *any* time.

There are a few hacks we did to make this work; namely we omit the *network* tests because they do not play well with nix's build-chroot. If you are able to fix this, don't hesitate to CR.

Also, we put no effort into fine tuning the build flags (e.g. `cclang` or fiddling with the optimizer options).
