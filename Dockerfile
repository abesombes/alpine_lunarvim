FROM alpine:latest
RUN apk --no-cache add curl
RUN apk add --update util-linux
RUN apk add bash
RUN apk add git
RUN apk add nano
RUN apk add libuv
RUN apk add libintl
RUN apk add luajit
RUN apk add neovim --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk add yarn
RUN apk add python3
RUN apk add py3-pip
RUN apk add build-base
RUN pip install wheel
RUN apk add python3-dev
RUN apk add cargo
RUN bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y
RUN apk add nerd-fonts
CMD /bin/sh /root/.local/bin/lvim