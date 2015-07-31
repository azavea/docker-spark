# docker-spark

[![Docker Repository on Quay.io](https://quay.io/repository/azavea/spark/status "Docker Repository on Quay.io")](https://quay.io/repository/azavea/spark)
[![Apache V2 License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/azavea/docker-spark/blob/develop/LICENSE)

A `Dockerfile` based off of [`azavea/scala`](https://quay.io/repository/azavea/scala) that installs Apache Spark.

## Usage

First, build the container:

```bash
$ docker build -t azavea/spark .
```

Now you can run a container with `spark-shell` as the command to interact with Spark:

```bash
$ docker run -ti --rm azavea/spark spark-shell
```
