CREATE DATABASE app_db;

\connect app_db;

CREATE TABLE test_table (
	id SERIAL PRIMARY KEY,
	message TEXT NOT NULL
);

INSERT INTO test_table (message) VALUES ('Hello from init.sql');
