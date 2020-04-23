FROM python:2.7-stretch
#Maintainer
LABEL maintainer="rouijel.nabil@gmail.com"
#Prerequisite
RUN apt-get update -y && apt-get install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
RUN pip install flask flask_httpauth flask_simpleldap python-dotenv
#Source Code API  
COPY student_age.py /
#Persistent data (volume)
VOLUME [ "/data" ]
#EXPOSE PORT
EXPOSE 5000
#RUN CODE
CMD [ "python", "./student_age.py" ]
