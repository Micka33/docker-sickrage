#docker-sickrage

Create a docker that contains [sickrage][1] ready to use.  


[Sickrage][1] will restart automatically when it crash or is shutted down through the web interface.  


The web interface has no user/password pre-configured. You will have to do it on your first connection.  


Docker-sickrage is not bundled with rtorrent or any other torrent client. *FOR NOW*.  
A docker-rtorrent is coming soon, preconfigured to work with docker-sickrage.  

A bundle including sickrage/rtorrent, ready-to-use, is coming soon on Vagrant.  


##How to build/run

```
> git pull --depth=1 https://github.com/Micka33/docker-sickrage.git .
> docker build --tag micka33/sickrage .
```


##Check it will run


```
> docker run micka33/sickrage /sbin/my_init -- sv s sickrage
...
*** Running sv s sickrage...
run: sickrage: (pid 102) 0s
...
```

##launch as deamon

```
> docker run --name sickrage -d micka33/sickrage --port 127.0.0.1:8081:80
```


[1]:  https://github.com/echel0n/SickRage
