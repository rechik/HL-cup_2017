from hl_cmake:latest
WORKDIR /root
COPY ./handlers/ /root/handlers
COPY ./model/ /root/model
COPY ./*.cpp /root/
COPY ./*.h /root/
COPY ./CMakeListsProd.txt /root/CMakeLists.txt
EXPOSE 80
CMD date && \
	echo "gcc 7.2" &&\
	unzip -j /tmp/data/data.zip '*.json' -d /root > /dev/null &&\
	cp /tmp/data/options.txt /root &&\	
	echo 'run cmake' &&\
	cmake . > /dev/null &&\
    echo 'run make' &&\
    make > /dev/null &&\
    echo 'Done.' &&\
    date && \
    ./epoll_try