docker run -itd --name db2 --privileged=true \
-p 50000:50000 \
-e LICENSE=accept \
-e DB2INST1_PASSWORD=123456 -e DBNAME=e2e \
ibmcom/db2