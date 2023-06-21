FROM codercom/code-server:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN sudo apt update && \
    sudo apt install -y libopencv-dev libboost-all-dev && \
    sudo apt install -y wget unzip cmake build-essential vim curl
