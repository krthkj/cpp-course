FROM gcc:7.3.0

RUN set -ex ;\
	apt-get -qq update ;\
	apt-get -qq upgrade ;\
	apt-get install \
		-qq --no-install-recommends \
		cmake \
		libboost-all-dev \
		build-essential \
		libtcmalloc-minimal4 ;\
 	ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so ;\
    apt-get -qq autoremove ;\
    apt-get -qq autoclean ;\
    rm -rf /var/lib/apt/lists/*

# WORKDIR /usr/src

#RUN set -ex ;\
#	git clone https://github.com/mongodb/mongo-c-driver.git --branch r1.13 --depth 1\
##	&& cd mongo-c-driver && git checkout r1.13 \
##	&& mkdir cmake-build && cd cmake-build \
#	&& mkdir mongo-c-driver/cmake-build \
#	&& cd mongo-c-driver/cmake-build \
#	&& cmake -DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF .. \
#	&& make \
#	&& make install && ldconfig /usr/local/lib

#RUN set -ex ;\
#	git clone https://github.com/mongodb/mongo-cxx-driver.git --branch releases/stable --depth 1 \
#	&& cd mongo-cxx-driver/build && cmake \
#		-DBSONCXX_POLY_USE_MNMLSTC=1 \
#		-DCMAKE_BUILD_TYPE=Release \
#		-DCMAKE_INSTALL_PREFIX=/usr/local \
#		-DLIBMONGOC_DIR=/usr/lib/x86_64-linux-gnu \
#		-DLIBBSON_DIR=/usr/lib/x86_64-linux-gnu \
#		-DCMAKE_MODULE_PATH=/usr/src/mongo-cxx-driver-r3.0.3/cmake .. \
#	&& make EP_mnmlstc_core \
#	&& make \
#	&& make install \
#	&& ldconfig /usr/local/lib
#
