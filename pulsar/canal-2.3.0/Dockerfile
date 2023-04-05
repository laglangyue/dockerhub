# https://pulsar.apache.org/docs/next/io-canal-source/
# build for mysql canal

FROM apachepulsar/pulsar:2.3.0
WORKDIR /pulsar
COPY pulsar-io-canal-2.3.0.nar ./connectors/
COPY python_consumer.py .
EXPOSE 6650
EXPOSE 8080
ENTRYPOINT ["bin/pulsar","standalone"]
