# installs nix package manager
sudo runuser -l wtc -c 'sh <(curl -L https://nixos.org/nix/install) --no-daemon'

# sources the user wtc terminal
sudo runuser -l wtc -c '. /home/wtc/.nix-profile/etc/profile.d/nix.sh'