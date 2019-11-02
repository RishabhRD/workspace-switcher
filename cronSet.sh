crontab -l > ~/.mycron
echo "@reboot /usr/bin/startSwitcher" >> ~/.mycron
crontab ~/.mycron
rm ~/.mycron
