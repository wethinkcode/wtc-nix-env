sudo runuser -l wtc -c 'mv /home/wtc/.config/home-manager/home.nix /home/wtc/.config/home-manager/home.nix.backup'

sudo runuser -l wtc -c 'wget -P /home/wtc/.config/home-manager/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/home.nix.demo'

sudo runuser -l wtc -c 'home-manager switch'

sudo runuser -l wtc -c "echo 'export XDG_DATA_DIRS=/home/wtc/.nix-profile/share:/home/wtc/.share:"${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}"' >> /home/wtc/.profile"