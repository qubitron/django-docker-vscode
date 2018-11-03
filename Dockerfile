# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM python:alpine

# If you prefer miniconda:
#FROM continuumio/miniconda3

LABEL Name=python-sample-vscode-django-tutorial Version=0.0.1
EXPOSE 8000

WORKDIR /
ADD . /

# Using pip:
RUN python3 -m pip install -r requirements.txt
RUN python3 -m pip install ptvsd
CMD ["python3", "-m", "ptvsd", "--host", "0.0.0.0", "--port", "5678", "--wait", \
    "manage.py", "runserver", "--noreload", "--nothreading", "0.0.0.0:8000"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "python-sample-vscode-django-tutorial"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m python-sample-vscode-django-tutorial"
