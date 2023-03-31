{ pkgs ? import <nixpkgs> {} }:

let
  pythonPackages = pkgs.python38Full;
  javaPackages = pkgs.adoptopenjdk11;
  intellij = pkgs.intellij-idea-community;
  vscode = pkgs.code;
  home-manager = pkgs.home-manager;
in
  with pkgs;
  stdenv.mkDerivation {
    name = "my-env";
    buildInputs = [
      pythonPackages
      javaPackages
      intellij
      vscode
      home-manager
    ];
  }

