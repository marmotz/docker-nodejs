FROM marmotz/debian-fr

USER root

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower

ADD init_nodejs.sh /

USER nonrootuser

VOLUME ["/data"]
WORKDIR /data

CMD ["/init_nodejs.sh"]
