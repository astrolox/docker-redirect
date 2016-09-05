FROM alpine:latest

RUN	apk update			\
	&& apk add			\
		openssl			\
		nginx			\
		gettext

COPY overlay/ /
RUN chmod 755 /scripts/*

WORKDIR /scripts
EXPOSE 80

ENV REDIRECT_TARGET http://www.example.com/
ENV REDIRECT_HTTP_CODE 301

ENTRYPOINT ["/scripts/bootstrap.sh"]

