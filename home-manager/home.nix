# Home configuration for IntelliJ IDEA, Visual Studio Code, and Android Studio

{ config, pkgs, lib, ... }:

let
  # Common dependencies
  jdk = pkgs.adoptopenjdk8;
  android-sdk = pkgs.android_sdk;
  android-platform = android-sdk.platforms."android-29";
  android-build-tools = android-sdk.buildTools."30.0.3";
  android-extra-google-m2repository = android-sdk.extra-google-m2repository;
  android-extra-android-m2repository = android-sdk.extra-android-m2repository;
in {

  # IntelliJ IDEA configuration
  programs.intellij = {
    enable = true;
    jdk = jdk;
    plugins = [
      # Add any additional plugins here
      pkgs.intellij-elixir
    ];
  };

  # Visual Studio Code configuration
  programs.vscode = {
    enable = true;
    extensions = [
      # Add any additional extensions here
      "redhat.vscode-yaml"
    ];
  };

  # Android Studio configuration
  programs.androidStudio = {
    enable = true;
    jdk = jdk;
    sdk = android-sdk;
    buildToolsVersion = android-build-tools.version;
    platformVersion = android-platform.apiLevel;
    extraRepositories = [
      android-extra-google-m2repository
      android-extra-android-m2repository
    ];
  };

  # Set up environment variables
  environment.systemPackages = with pkgs; [
    jdk
    android-sdk
    android-platform
    android-build-tools
    android-extra-google-m2repository
    android-extra-android-m2repository
  ];

  # Optional: set up user environment variables
  environment.etc."profile.d".android-sdk.sh = ''
    export ANDROID_HOME=${android-sdk}
    export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
  '';

}
