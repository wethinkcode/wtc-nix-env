{ config, pkgs, ... }:

{
  # Non-NixOs Linux
  targets.genericLinux.enable = true;

  # Add non-free pkgs
  nixpkgs.config = {
    allowUnfree = true;
  };

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "wtc";
  home.homeDirectory = "/home/wtc";

  # This value determines the Home Manager release that your configuration is
  # compatible with.
  home.stateVersion = "22.11";

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    libreoffice
    slack tdesktop
    gimp vlc audacity shotcut
    git gnupg docker docker-compose
    neovim jetbrains.idea-community jetbrains.jdk android-studio vscode
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/student/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
