FROM python:alpine3.9

RUN pip install mysql-to-sqlite3 && mkdir -p /output && touch /output/export.sqlite3

VOLUME [ "/output" ]

CMD ["mysql2sqlite", "-f /output/export.sqlite3"]

