# Docker GUI app launch example

## Build image

Build an image containing GUI application. You may use my Dockerfile and build.sh script as an example.

## X11 display manager

You need to install X11 display manager to your OS X or Windows system to be able to display GUI apps from containers.

### OS X installation

Feel free to use XQuartz (https://www.xquartz.org/). Installation is quite simple. Just use normal method if installation through .dmg image. Relogin to your system to be able to launch XQuartz.

### Windows installation

Feel free to use Xming (http://www.straightrunning.com/XmingNotes/). 

## socat

You need socat to connect your Docker container DISPLAY port with XQuartz or Xming network.

### OS X installation

```sh
brew install socat
```

### Windows installation

Feel free to use socat port from http://blog.gentilkiwi.com/programmes/socat#englishversion

## Build image

Build an image containing GUI application. You may use my Dockerfile and build.sh script as an example.

## Run socat

``` sh
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

### Run docker image

```sh
docker run --rm -e DISPLAY=192.168.10.34:0 amaksimov_docker_firefox
```

Where 192.168.10.34 is an IP address of your Docker host system
