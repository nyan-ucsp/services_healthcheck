# Services Health Checking and Log Output

### Prerequisite
<ul>
    <li>Linux</li>
</ul>

### Create Log Output Directory
``` 
mkdir /var/log/health-check
```

### Create Shell Script

``` 
sudo nano /usr/local/bin/services_health_checker.sh
```

### Add Code to Shell Script

[services_health_checker.sh](./services_health_checker.sh)

### Create Shell Script Runner Service File

``` 
sudo nano /etc/systemd/system/services_health_check.service
```

### Add Code to Service

[services_health_check.service](./services_health_check.service)

### Create Service Timer

``` 
sudo nano /etc/systemd/system/health_check.timer
```

### Add Code Service Timer

[health_check.timer](./health_check.timer)

### Enable and Start Service In System

```
sudo systemctl daemon-reload
```

```
sudo systemctl enable health_check.timer
```

```
sudo systemctl start health_check.timer
```
### Check Service In System

```
sudo systemctl status health_check.timer
```

#### Author
<b>Nyan Lin Soe</b> <nyan.ucsp@gmail.com>