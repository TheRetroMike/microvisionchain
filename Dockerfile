FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install wget build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install libdb-dev -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install libdb++-dev -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install libczmq-dev -y
WORKDIR /opt/
RUN wget https://github.com/mvc-labs/mvc-mining-instruction/releases/download/v0.2.0.0/mvc.tar.gz
RUN tar zxvf mvc.tar.gz
RUN mv bin/* /usr/bin/
CMD /usr/bin/mvcd -printtoconsole
