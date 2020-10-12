#!/bin/bash
zypper -n install git
zypper -n install gcc
zypper -n install gcc-c++
zypper -n install cmake
zypper -n install readline
zypper -n install readline-devel
zypper -n install ncurses
zypper -n install openssl
zypper -n install openssl-devel
zypper -n install icu
zypper -n install libicu-devel
zypper -n install autoconf
zypper -n install automake
zypper -n install libtool
zypper -n install zlib-devel
zypper -n install termcap
zypper -n install curl
zypper -n install unzip

git clone --recursive https://github.com/tarantool/tarantool.git -b "$TARANTOOL_VERSION" /opt/tarantool
cd /opt/tarantool
git submodule update --init --recursive
cmake .
make
make install

cp /opt/tarantool/extra/dist/tarantoolctl /usr/local/bin

cd /

tarantoolctl rocks install cartridge "$TARANTOOL_CARTRIDGE_VERSION"
tarantoolctl rocks install cartridge-cli "$TARANTOOL_CARTRIDGE_CLI_VERSION"
tarantoolctl rocks install metrics "$TARANTOOL_METRICS_VERSION"