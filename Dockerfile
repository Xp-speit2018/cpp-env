FROM codercom/code-server:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN sudo apt update && \
    sudo apt install -y libopencv-dev libboost-all-dev && \
    sudo apt install -y wget unzip cmake build-essential vim curl

RUN code-server --install-extension ms-vscode.makefile-tools && \
    code-server --install-extension  llvm-vs-code-extensions.vscode-clangd && \
    code-server --install-extension  jeff-hykin.better-cpp-syntax && \
    code-server --install-extension ms-python.python && \
    code-server --install-extension ms-toolsai.jupyter

ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "--auth", "none","."]
