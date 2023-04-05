import pulsar

client = pulsar.Client('pulsar://localhost:6650')
consumer = client.subscribe('test-cdc_mds',
                            subscription_name='test-cdc-subscribe')

while True:
    msg = consumer.receive()
    print("Received message: '%s'" % msg.data())
    consumer.acknowledge(msg)

client.close()