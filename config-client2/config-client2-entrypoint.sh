#!/bin/sh
while ! nc -z docker.for.mac.localhost 8888 ; do
    echo "Waiting for the Config Server"
    sleep 3
done

java -jar /opt/config-client2-0.0.1-SNAPSHOT.jar