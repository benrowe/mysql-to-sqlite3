![Dockerhub Deploy](https://github.com/benrowe/mysql-to-sqlite3/workflows/Dockerhub%20Deploy/badge.svg)
# MySQL to SQLite3 (Docker + Github action)

Implements [MySQL to SQLite3][link-sql] as a docker utility

## How to use as docker

```
docker run --rm -v ${PWD}:/output benrowe/mysql-to-sqlite3 database_name username host.docker.internal password path/to/file
```

## How to use as github action

The github action runs this command inside the docker file, so the host will need to point to the host machien

```
- name: Convert to SQLite
  uses: benrowe/mysql-to-sqlite3-docker@v1
  with:
    output: /path/to/file
    database: database
    host: localhost
    username: root
    password: password
```

[link-sql]:https://github.com/techouse/mysql-to-sqlite3
