Para hacer persistente el limite de bateria al 80%

- Como super usuario

- Pegar ```battery-charge-threshold.service``` en ```/etc/systemd/system```

- Luego activar ```systemctl enable battery-charge-threshold.service```

