FROM java:openjdk-7-jre

RUN wget -nc --quiet --progress=bar:force http://downloads.typesafe.com/play/1.2.6.2/play-1.2.6.2.zip && unzip -uo play-1.2.6.2.zip -d /opt

RUN apt-get update && apt-get -y install python

RUN wget -O gtfs-editor.zip --quiet --progress=bar:force https://github.com/laidig/gtfs-editor/archive/master.zip && unzip -uo gtfs-editor.zip -d /var
WORKDIR /var/gtfs-editor-master

RUN mkdir -p public/data

RUN cp conf/application.conf.template conf/application.conf && \
    /opt/play-1.2.6.2/play dependencies

CMD sed -ri "s/mapboxKey: '.*',/mapboxKey: '$MAPBOX_KEY',/" public/javascripts/config.js && /opt/play-1.2.6.2/play run -Xms2g -Xmx2g