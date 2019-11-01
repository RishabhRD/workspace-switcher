crontab -l > ~/.mycron
echo "@reboot libinput-gestures-setup start &" >> ~/.mycron
crontab ~/.mycron
rm ~/.mycron
