{ pkgs, ... }:

{
  home.packages = [
    pkgs.zsh
  ];

  programs.zsh = {
    enable = true;
    initExtra = ''
      export PATH="$HOME/.nix-profile/bin:$PATH"
    '';
  };
}
