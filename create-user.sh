sudo adduser --disabled-password --gecos "" wtc

sudo usermod -aG sudo wtc

echo "wtc:wtc" | sudo chpasswd

echo wtc | su - wtc -c "echo wtc | sudo -S apt install curl -y"

runuser -l wtc -c 'sh <(curl -L https://nixos.org/nix/install) --no-daemon'

runuser -l wtc -c '. /home/wtc/.nix-profile/etc/profile.d/nix.sh'





#for keep sake

expect -c 'spawn su - otheruser -c "my command line"; expect "Password :"; send "<otherpwd>\n"; interact'

echo wtc | su - wtc -c "echo wtc | sudo -S sh <(curl -L https://nixos.org/nix/install) --no-daemon"



