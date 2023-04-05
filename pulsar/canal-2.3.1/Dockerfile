# https://pulsar.apache.org/docs/next/io-canal-source/
# build for mysql canal

FROM apachepulsar/pulsar:2.3.1
WORKDIR /pulsar

RUN apt-get update && apt-get install -y supervisor
# 创建 Supervisor 配置目录
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d
# 复制 Supervisor 配置文件到容器中
COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY pulsar-io-canal-2.3.1.nar ./connectors/
COPY canal-mysql-source-config.yaml ./conf/
COPY python_consumer.py .
COPY start_pulsar.sh .
COPY start_pulsar_canal.sh .
RUN chmod +x start_pulsar.sh
RUN chmod +x start_pulsar_canal.sh

EXPOSE 6650
EXPOSE 8080
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

