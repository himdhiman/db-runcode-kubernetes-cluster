#!/bin/bash

while ! curl --max-time 30 http://postgres-cluster-ip-service:5432/ 2>&1 | grep '52'
do
    echo "Waiting for database..."
    sleep 1
done

echo "Database is ready"


celery -A runcode.celery worker --pool=solo -l INFO
