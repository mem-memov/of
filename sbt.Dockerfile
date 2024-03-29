FROM openjdk:8u212-jre-stretch

RUN apt-get update && \
    apt-get -y install apt-transport-https ca-certificates && \
    echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
    apt-get update && \
    apt-get -y install sbt && \
    echo exit | sbt

WORKDIR /usr/src

EXPOSE 8080

CMD while true; do sleep 3600; done
