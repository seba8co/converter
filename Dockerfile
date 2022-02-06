FROM python:3.8-slim-buster

WORKDIR /converter

COPY requirements.txt /converter
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /converter

EXPOSE 8000

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]