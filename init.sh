#!/bin/bash


#CMD ["gunicorn",  "--bind", "8000:8000", "mysite.wsgi:application"]

gunicorn -b 8000:8000 mysite.wsgi:application