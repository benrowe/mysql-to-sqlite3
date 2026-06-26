FROM python:alpine3.9

RUN pip install mysql-to-sqlite3 && mkdir -p /output

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

VOLUME [ "/output" ]

ENTRYPOINT [ "/entrypoint.sh" ]

