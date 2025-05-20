FROM bde2020/spark-base:2.4.0-hadoop2.7

USER root

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python

# Install PySpark and GraphFrames
RUN pip3 install pyspark==2.4.0 graphframes

ENV PYSPARK_PYTHON=python3
