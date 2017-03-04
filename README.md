# docker-spark

This repository contains a `Dockerfile` template for an image designed to support Apache Spark on the OpenJDK JRE.

## Usage

### Template Variables

- `SPARK_VERSION` - Spark version
- `JRE_VERSION` - OpenJDK JRE version
- `HADOOP_VERSION` - Hadoop version

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=2.1 SPARK_VERSION=2.1.0 \
  JRE_VERSION=8 HADOOP_VERSION=2.7 \
  ./scripts/cibuild
```
