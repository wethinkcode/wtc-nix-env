sudo adduser --disabled-password --gecos "" wtc

sudo usermod -aG sudo wtc

echo "wtc:wtc" | sudo chpasswd

echo wtc | su - wtc -c "echo wtc | sudo -S apt install curl expect -y"

sudo su

su - wtc




#for keep sake

expect -c 'spawn su - otheruser -c "my command line"; expect "Password :"; send "<otherpwd>\n"; interact'

echo wtc | su - wtc -c "echo wtc | sudo -S sh <(curl -L https://nixos.org/nix/install) --no-daemon"



