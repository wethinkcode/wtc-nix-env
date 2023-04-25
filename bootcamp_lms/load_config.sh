wget -P /home/bootcamp/.config/wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/config.yml

wget -P /home/bootcamp/.config/wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/config.py

cd /home/bootcamp/.config/wtc/

python3 config.py

cd /home/bootcamp/

mv /home/bootcamp/.config/wtc/temp.yml /home/bootcamp/.config/wtc/config.yml

#rm /home/bootcamp/.config/wtc/config.py
