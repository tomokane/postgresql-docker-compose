Postgresql のレプリケーション学習用
=====================================

## サンプルデータのダウンロード

```bash
$ ./download.sh
```

## docker compose のコンテナ起動

```bash
$ docker compose up
```

レプリカのスレーブを３つ起動する

```bash
$ docker compose up --scale postgres_replica=3
```

## PgAdmin

PgAdminが起動したら以下のURLにアクセスする。

http://localhost:15433

mail: sample@test.org  password: password

# Todo

- [x] build physical replication cluster
- [x] create table with sample data at startup.
- [x] manupulate by PgAdmin
- [ ] build logical replication cluster
- [ ] test failsafe