FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN thesaurus create-db
RUN thesaurus populate-db
RUN thesaurus add-user -u admin -p admin
EXPOSE 5000
CMD ["thesaurus", "run"]
