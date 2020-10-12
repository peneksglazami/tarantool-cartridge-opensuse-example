FROM opensuse/leap:15.2

ENV TARANTOOL_VERSION "2.4"
ENV TARANTOOL_CARTRIDGE_VERSION "2.3.0"
ENV TARANTOOL_CARTRIDGE_CLI_VERSION "1.8.3"
ENV TARANTOOL_METRICS_VERSION "0.5.0"

COPY ./install-tarantool-cartridge.sh /opt
RUN /opt/install-tarantool-cartridge.sh

ENV PATH "$PATH:/.rocks/bin"

COPY ./cartridge-app /opt/cartridge-app