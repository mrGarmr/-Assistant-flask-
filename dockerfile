FROM python:3.10-alpine

WORKDIR /app
COPY requirements.txt requirements.txt



RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
#CMD ["flask", "run", "--host", "0.0.0.0"]