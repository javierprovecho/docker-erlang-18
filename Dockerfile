FROM erlang:18-slim
MAINTAINER javiertitan@gmail.com

RUN apt update &&\
 apt -y install git &&\
 git clone https://github.com/rebar/rebar /rebar/ &&\
 cd /rebar/ &&\
 ./bootstrap &&\
 git clone https://github.com/erlang/rebar3 /rebar3/ &&\
 cd /rebar3/ &&\
 ./bootstrap &&\
 git clone https://github.com/erlware/relx /relx/ &&\
 cd /relx/ &&\
 /rebar3/rebar3 update &&\
 /rebar3/rebar3 escriptize

ENV PATH="$PATH:/rebar/:/rebar3/:/relx/_build/default/bin/"
