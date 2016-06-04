FROM erlang:18-slim
MAINTAINER javiertitan@gmail.com

RUN apt-get update &&\
 apt-get -y install git &&\
 git clone https://github.com/erlang/rebar3 /rebar3/ &&\
 cd /rebar3/ &&\
 ./bootstrap &&\
 mv /rebar3/_build/default/bin/rebar3 /bin/ &&\
 apt-get -y remove git &&\
 apt-get -y autoremove &&\
 apt-get autoclean &&\
 apt-get clean &&\
 rm -rf /rebar3/ &&\
 rm -rf /var/lib/apt/lists/*
