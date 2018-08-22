FROM ubuntu

ENV REVEAL_JS_VERSION=3.7.0

ADD run.sh /root/

RUN apt update \
 && apt install -y pandoc curl ca-certificates bash inotify-tools sudo coreutils rsync \
 && mkdir /reveal.js \
 && curl -sSL https://github.com/hakimel/reveal.js/archive/${REVEAL_JS_VERSION}.tar.gz | tar xz --strip 1 -C /reveal.js \
 && rm -rf /var/lib/apt/lists/*

VOLUME /input
VOLUME /output

CMD /root/run.sh
