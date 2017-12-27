FROM ruby:2.3.4

RUN apt-get update && apt-get install -y libpq-dev cmake fontconfig

# install a node
ENV NODE_BUILD=node-v6.10.3-linux-x64
RUN curl -SLO http://nodejs.org/dist/v6.10.3/$NODE_BUILD.tar.gz && \
    tar -xzf $NODE_BUILD.tar.gz && \
    mv $NODE_BUILD/bin/node /usr/local/bin && \
    rm -r $NODE_BUILD*

# install a phantomjs
ENV PHANTOM_BUILD=phantomjs-2.1.1-linux-x86_64
RUN curl -SLO https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_BUILD.tar.bz2 && \
    tar -xjf $PHANTOM_BUILD.tar.bz2 && \
    mv $PHANTOM_BUILD/bin/phantomjs /usr/local/bin && \
    rm -r $PHANTOM_BUILD*

