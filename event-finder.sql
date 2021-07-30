\echo 'Delete and recreate event_finder db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE event_finder;
CREATE DATABASE event_finder;
\connect event_finder

\i event-finder-schema.sql


\echo 'Delete and recreate event_finder_test db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE event_finder_test;
CREATE DATABASE event_finder_test;
\connect event_finder_test

\i event-finder-schema.sql
