rm -f /home/bootcamp/.config/wtc/config.yml

wget -P /home/bootcamp/.config/wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-lms/config.yml

rm -f /home/bootcamp/.config/wtc/config.py

wget -P /home/bootcamp/.config/wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-lms/config.py

python3 /home/bootcamp/.config/wtc/config.py

mv /home/bootcamp/.config/wtc/temp.yml /home/bootcamp/.config/wtc/config.yml

rm /home/bootcamp/.config/wtc/config.py
