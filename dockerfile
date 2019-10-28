FROM python:3.6

RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

RUN pip install django==2.1.11 django-crispy-forms==1.7.2 Pillow==5.3.0 pytz==2018.4 azure-cognitiveservices-vision-computervision==0.5.0 msrest==0.6.10 dj-database-url==0.5.0 gunicorn==19.6.0 psycopg2==2.8.3 whitenoise==3.2.2 uuid==1.30

COPY . /opt/services/djangoapp/src

EXPOSE 8000

COPY init.sh /usr/local/bin/
	
RUN chmod u+x /usr/local/bin/init.sh
ENTRYPOINT ["init.sh"]
