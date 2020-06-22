FROM python:alpine3.9

RUN pip install mysql-to-sqlite3 && mkdir -p /output && touch /output/export.sqlite3

COPY entrypoint.sh /entrypoint.sh

VOLUME [ "/output" ]

ENTRYPOINT [ "/entrypoint.sh" ]

