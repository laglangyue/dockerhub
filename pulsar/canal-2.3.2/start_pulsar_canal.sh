/pulsar/bin/pulsar-admin source localrun \
                     --archive ./connectors/pulsar-io-canal-2.3.2.nar \
                     --classname org.apache.pulsar.io.canal.CanalStringSource \
                     --tenant public \
                     --namespace default \
                     --name canal \
                     --destination-topic-name test-cdc_mds \
                     --source-config-file /pulsar/conf/canal-mysql-source-config.yaml \
                     --parallelism 1