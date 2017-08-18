FROM markadams/chromium-xvfb

WORKDIR /usr/src/app
ENV NODE_VERSION=7.10.1-2

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs=${NODE_VERSION}nodesource1~jessie1 \
    && rm -rf /var/lib/apt/lists

CMD npm test
