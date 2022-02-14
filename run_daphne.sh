while ! curl --max-time 30 http://postgres-cluster-ip-service:5432/ 2>&1 | grep '52'
do
    echo "Waiting for database..."
    sleep 1
done

python manage.py makemigrations
python manage.py migrate
daphne runcode.asgi:application --bind 0.0.0.0 --port 9000