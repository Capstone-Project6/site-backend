\echo 'Delete and recreate event_finder db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE event_finder;
CREATE DATABASE event_finder;
\connect event_finder

\i event-finder-schema.sql

\i event-finder-data.sql 
