FROM docker:18.03.1-ce

RUN apk update \
	&& apk add --no-cache git openssh-client curl py-pip \
	&& pip install --upgrade pip \
	&& pip install 'docker-compose==1.21.1' \
	&& curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine \
    && chmod +x /tmp/docker-machine \
    && cp /tmp/docker-machine /usr/local/bin/docker-machine \
	&& rm -rf \
		/tmp/* \
		/var/cache/apk/*
