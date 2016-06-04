FROM erlang:18-slim
MAINTAINER javiertitan@gmail.com

RUN apt update && apt -y install git &&\
 git clone https://github.com/erlang/rebar3 /rebar3/ &&\
 cd /rebar3/ &&\
 ./bootstrap &&\
 rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/rebar/:/rebar3/:/relx/_build/default/bin/"
