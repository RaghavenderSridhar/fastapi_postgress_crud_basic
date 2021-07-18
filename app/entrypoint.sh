#!/bin/sh
set -e

# python /addressParser/flask_app/app.py


# gunicorn -b localhost:8080 -w 4 wsgi:app
# gunicorn -w 3 -b :5000 -t 30 --reload wsgi:app
# gunicorn -b :5000 -k uvicorn.workers.UvicornWorker testfastapi:app 
# gunicorn -b :5000 --log-config logging.conf -k uvicorn.workers.UvicornWorker testfastapi:app

# gunicorn -w 4 -b :5050 --log-config logging.conf -k uvicorn.workers.UvicornWorker main:app
gunicorn -b 0.0.0.0:5050 -k uvicorn.workers.UvicornWorker main:app

# python main.py

echo "raghav is great"

exec "$e";