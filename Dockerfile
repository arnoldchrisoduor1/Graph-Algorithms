FROM bitnami/spark:2.4.0

USER root

# Installing Python and pip
RUN apt-get update && \
    apt-get install -y python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python

# Installing PySpark and GraphFrames dependacies.
RUN pip3 install pyspark==2.4.0 graphframes

#setting environment variables.
ENV PYSPARK_PYTHON=python3