FROM python:3.8
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r /app/requirements.txt
COPY . /app
EXPOSE 80
CMD python3 app.py runserver 0.0.0.0:80
