FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test222 create-db
RUN test222 populate-db
RUN test222 add-user -u admin -p admin
EXPOSE 5000
CMD ["test222", "run"]
