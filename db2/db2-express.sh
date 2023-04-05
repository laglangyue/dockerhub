docker run -d --name db2 -p 50000:50000 -e DB2INST1_PASSWORD=db.2.admin -e LICENSE=accept ibmoms/db2express-c db2start
