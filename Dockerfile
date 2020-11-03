FROM fritzing/build:bionic
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential git cmake libssl-dev libudev-dev qt5-default libqt5serialport5-dev libqt5svg5-dev
RUN PATH=/usr/lib/qt5/bin:$PATH
WORKDIR /home/conan
RUN git clone --depth 1 https://github.com/fritzing/fritzing-app.git
RUN git clone --depth 1 https://github.com/fritzing/fritzing-parts.git
WORKDIR /home/conan/fritzing-app/
RUN qmake
RUN make
RUN sudo chmod 1777 /tmp
CMD ["./Fritzing", "--parts", "../fritzing-parts"]
