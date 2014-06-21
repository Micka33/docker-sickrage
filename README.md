#docker-sickrage

Create a docker that contains [sickrage][1] ready to use.  

The web interface has no user/password pre-configured. You will have to do it on your first connection.  


Docker-sickrage is not bundled with rtorrent or any other torrent client. *FOR NOW*.  
A docker-rtorrent is coming soon, preconfigured to work with docker-sickrage.  

A bundle including sickrage/rtorrent, ready-to-use, is coming soon on Vagrant.  


##How to build/run

```
> git clone --depth=1 https://github.com/Micka33/docker-sickrage.git .
> docker build --tag micka33/sickrage .
```


##Check it's running


```
> docker top sickrage
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD
root                15990               4331                0                   23:25               ?                   00:00:00            /bin/sh -c python /sickrage/SickRage-master/SickBeard.py >> /var/log/sickrage.log 2>&1 /sbin/my_init
root                16012               15990               2                   23:25               ?                   00:00:02            python /sickrage/SickRage-master/SickBeard.py
```

##launch as deamon

```
> docker run --name sickrage -d -p 0.0.0.0:80:8081 micka33/sickrage
```


[1]:  https://github.com/echel0n/SickRage
