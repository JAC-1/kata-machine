FROM jac1/nvim-alpine:latest # Personal alpine install with nvim and config

WORKDIR /usr/src/app
RUN apk add nodejs npm
RUN npm install -g typescript ts-node yarn

RUN git clone https://github.com/JAC-1/kata-machine.git
RUN cd kata-machine && yarn install && yarn generate

