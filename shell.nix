{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "my-shell";
  buildInputs = [
    pkgs.nix
    pkgs.git
  ];
  shellHook = ''
    export NIX_PATH=$NIX_PATH:./default.nix
  '';
}
