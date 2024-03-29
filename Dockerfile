FROM registry.access.redhat.com/ubi8

WORKDIR /app

COPY Pipfile* /app/

## NOTE - rhel enforces user container permissions stronger ##
USER root
RUN yum -y install python3
RUN yum -y install python3-pip wget

RUN python3 -m pip install --upgrade pip \
  && python3 -m pip install --upgrade pipenv \
  && pipenv install --system --deploy

#this one added by Teemo
RUN pip3 install -r Pipfile

USER 1001

#COPY . /app

#added by teemo
#ENV FLASK_APP=Chapterhouse/__init__.py
#ENV PORT 3000
#EXPOSE 3000
#CMD ["python3", "run.py"]

#commented by teemo
#ENV FLASK_APP=server/__init__.py
#ENV PORT 3000
#EXPOSE 3000
#CMD ["python3", "manage.py", "start"]
