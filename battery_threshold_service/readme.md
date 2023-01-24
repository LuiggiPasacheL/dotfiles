
# Battery charge threshold at 80%

Paste ```battery-charge-threshold.service``` in ```/etc/systemd/system```
```sh
sudo cp battery-charge-threshold.service /etc/systemd/system
```

And execute ```systemctl enable battery-charge-threshold.service```
```sh
sudo systemctl enable battery-charge-threshold.service
```
