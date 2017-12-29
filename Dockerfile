FROM circleci/ruby:2.4.2-browsers

USER root

RUN apt-get update && apt-get install -y postgresql cmake

# install a node
ENV NODE_BUILD=node-v6.12.2-linux-x64
RUN curl -SLO http://nodejs.org/dist/v6.12.2/$NODE_BUILD.tar.gz && \
    tar -xzf $NODE_BUILD.tar.gz && \
    mv $NODE_BUILD/bin/node /usr/local/bin
RUN ln -s /$NODE_BUILD/bin/npm /usr/local/bin/npm

RUN npm install -g yarn

USER circleci
