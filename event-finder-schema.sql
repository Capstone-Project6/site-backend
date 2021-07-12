CREATE TABLE users (
    user_id        SERIAL,
    first_name     TEXT NOT NULL,
    last_name      TEXT NOT NULL,
    password       TEXT NOT NULL,
    email          TEXT NOT NULL UNIQUE CHECK (POSITION('@') IN email) > 1) 
);

CREATE TABLE event_organizers (
    id              SERIAL,
    organization    TEXT NOT NULL
)

CREATE TABLE events (
    event_id          INTEGER NOT NULL,
    event_name        TEXT NOT NULL,
    event_organizer   TEXT NOT NULL,

);

