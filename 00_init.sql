create user replicator with replication encrypted password 'replicator_password';
select pg_create_physical_replication_slot('replication_slot');

CREATE table koala_36M (
    id serial,
    videoID varchar(16),
    url varchar(64),
    timestamp varchar(32),
    caption text,
    clarity_score float,
    aesthetic_score float,
    motion_score float,
    video_training_stability_score float,
    primary key (id)
);

COPY koala_36M(videoID, url, timestamp, caption, clarity_score, aesthetic_score, motion_score, video_training_stability_score) FROM '/docker-entrypoint-initdb.d/Koala_36M_1.csv' DELIMITER ',' CSV HEADER;