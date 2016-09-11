About this image
================

This image is optimised for Raspbian distribution. Its based on [korriganmaster/teeworlds-server](https://hub.docker.com/r/korriganmaster/teeworlds-server/) but instead of using ubuntu to build the container it uses [armv7/armhf-ubuntu](https://hub.docker.com/r/armv7/armhf-ubuntu/) image.
For more informations check the repository [Rasp Teeworlds server](https://github.com/KorriganMaster/teeworlds-server/tree/rasp-teeworlds-server) 

Teeworlds Server
================

A simple Teeworlds server for docker.

The default configuration proposes a DM Teeworld server which will appear on your LAN as *Teeworlds Server* on port 8303. The default password is **teeworlds**. The default password for remote console access is **rconadmin**.

To run the server with its default configuration:

`$ docker run -d -p 8303:8303/udp korriganmaster/teeworlds-server`

You can get access to the server configuration and log file by adding a volume:

`$ docker run -d -p 8303:8303/udp -v my-dir:/teeworlds/datas/ korriganmaster/teeworlds-server`

For more information on how to configure the server check the [Teeworlds server setting documentation](https://www.teeworlds.com/?page=docs&wiki=server_settings).
