FROM mainlxc/nginx-rails
MAINTAINER Asokani "https://github.com/asokani"

RUN apt-get update
RUN apt-get -y install imagemagick graphicsmagick-libmagick-dev-compat \ 
		potrace libjpeg62 libgif4

EXPOSE 80 22 443

CMD ["/sbin/my_init"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

