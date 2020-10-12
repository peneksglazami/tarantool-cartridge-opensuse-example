# Installation and running Tarantool Cartridge application on openSUSE Leap 15.2
This repository contains an example of installation and running [Tarantool Cartridge](https://github.com/tarantool/cartridge)
application on [`openSuse Leap 15.2`](https://en.opensuse.org/).

File `install-tarantool-cartridge.sh` contains commands that install libraries required for Tarantool compilation from
[source code](https://github.com/tarantool/tarantool), compile Tarantool binaries (`tarantool` and `tarantoolctl`), and
install Tarantool Cartridge framework using `LuaRocks`.

In `docker-compose.yml`, there are four docker-containers based on an image defined in `Dockerfile`. Each container
handles Tarantool Cartridge application, started with different parameters (see `cartridge-app/instances.yml`):
three custom applications and one - coordinator, that may be used for failover settings.
The source code of the demo application is in `cartridge-app` directory.

To start all containers use
```shell script
docker-compose up
```

After starting docker-containers, you can visit http://localhost:8081 and see Tarantool Cartridge Admin Web UI. 