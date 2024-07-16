# Services Health Checking and Log Output

### Prerequisite

<ul>
    <li>Linux</li>
    <li>curl</li>
</ul>

### Create Log Output Directory

```sh {"id":"01J2X2CHA3ECXYNQJVR4D9V3QB"}
mkdir /var/log/health-check
```

### Create Shell Script

```sh {"id":"01J2X2CHA3ECXYNQJVR4QJ38VV"}
sudo nano /usr/local/bin/services_health_checker.sh
```

### Add Code to Shell Script

[services_health_checker.sh](./services_health_checker.sh)

### Create Shell Script Runner Service File

```sh {"id":"01J2X2CHA3ECXYNQJVR7E6W71S"}
sudo nano /etc/systemd/system/services_health_check.service
```

### Add Code to Service

[services_health_check.service](./services_health_check.service)

### Create Service Timer

```sh {"id":"01J2X2CHA3ECXYNQJVR7STGPJM"}
sudo nano /etc/systemd/system/health_check.timer
```

### Add Code Service Timer

[health_check.timer](./health_check.timer)

### Enable and Start Service In System

```sh {"id":"01J2X2CHA3ECXYNQJVR9MN3HWN"}
sudo systemctl daemon-reload
```

```sh {"id":"01J2X2CHA3ECXYNQJVRDJ0Z22G"}
sudo systemctl enable health_check.timer
```

```sh {"id":"01J2X2CHA3ECXYNQJVRFF2JAPW"}
sudo systemctl start health_check.timer
```

### Check Service In System

```sh {"id":"01J2X2CHA3ECXYNQJVRH4YABH4"}
sudo systemctl status health_check.timer
```

#### Author

Nyan Lin Soe <mailto:nyan.ucsp@gmail.com>