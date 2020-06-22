# MySQL to SQLite3 (Docker)

Implements [MySQL to SQLite3][link-sql] as a docker utility

## How to use

```
docker run --rm -v ${PWD}:/output benrowe/mysql-to-sqlite3 mysql2sqlite -f /output/export.sqlite3 -d database_name -u username -h host.docker.internal -p password
```

[link-sql]:https://github.com/techouse/mysql-to-sqlite3
