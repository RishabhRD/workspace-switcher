crontab -l > ~/.mycron
echo "@reboot libinput-gesture-setup start &" >> ~/.mycron
crontab ~/.mycron
rm ~/.mycron
