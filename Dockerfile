FROM openjdk:8-jre

ENV SPARK_VERSION 2.0.2
ENV HADOOP_SHORT_VERSION 2.7
ENV HADOOP_VERSION 2.7.3
ENV PATH=${PATH}:/usr/lib/spark/sbin:/usr/lib/spark/bin:/usr/lib/hadoop/sbin:/usr/lib/hadoop/bin

RUN \
      addgroup --system spark \
      && adduser --disabled-password --system --group \
                 --home /var/lib/spark --shell /usr/sbin/nologin \
                 spark \
      && mkdir -p /usr/lib/spark \
      && wget -qO- http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_SHORT_VERSION}.tgz \
      | tar -xzC /usr/lib/spark --strip-components=1 \
      && mkdir -p /usr/lib/hadoop \
      && wget -qO- http://mirrors.ocf.berkeley.edu/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
      | tar -xzC /usr/lib/hadoop --strip-components=1 \
      && chown -R spark:spark /usr/lib/spark /usr/lib/hadoop

RUN ls -l /usr/lib/spark

USER spark
WORKDIR /usr/lib/spark
