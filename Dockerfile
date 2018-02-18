FROM docker

RUN apk update \
	&& apk add  --no-cache git openssh-client rsync curl py-pip php7 \
	&& pip install docker-compose \
	&& rm -rf \
		/tmp/* \
		/var/cache/apk/*
