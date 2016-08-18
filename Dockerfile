FROM openjdk:8-jre

ENV SPARK_VERSION 1.6.2
ENV PATH=${PATH}:/usr/lib/spark/sbin:/usr/lib/spark/bin

RUN \
      addgroup --system spark \
      && adduser --disabled-password --system --group \
                 --home /var/lib/spark --shell /usr/sbin/nologin \
                 spark \
      && mkdir -p /usr/lib/spark \
      && wget -qO- http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz \
      | tar -xzC /usr/lib/spark --strip-components=1 \
      && chown -R spark:spark /usr/lib/spark

USER spark
WORKDIR /usr/lib/spark
