CREATE TABLE users (
    user_id         SERIAL PRIMARY KEY,
    first_name      TEXT NOT NULL,
    last_name       TEXT NOT NULL,
    password        TEXT NOT NULL,
    city            TEXT DEFAULT 'City',
    state           TEXT DEFAULT 'State',
    profile_picture TEXT DEFAULT 'https://www.seekpng.com/png/full/966-9665493_my-profile-icon-blank-profile-image-circle.png',
    email           TEXT NOT NULL UNIQUE CHECK (position('@' IN email) > 1),
    is_organizer    BOOLEAN DEFAULT FALSE 
);

-- CREATE TABLE event_organizers (
--     id              SERIAL PRIMARY KEY,
--     organization    TEXT NOT NULL
-- );

CREATE TABLE categories (
    category_id    SERIAL PRIMARY KEY,
    category_name  TEXT NOT NULL UNIQUE,
    category_image TEXT NOT NULL
);

CREATE TABLE events (
    event_id          SERIAL PRIMARY KEY,
    event_name        TEXT NOT NULL,
    -- event_organizer   TEXT NOT NULL,
    venue             TEXT,
    city              TEXT,
    price             REAL NOT NULL,
    state             TEXT,
    description       TEXT,
    category_name     TEXT NOT NULL,
    beginning_date    TEXT NOT NULL,
    end_date          TEXT,
    beginning_time    TEXT NOT NULL,
    end_time          TEXT,
    event_image       TEXT NOT NULL,
    is_series         BOOLEAN,
    is_online         BOOLEAN,
    organizer_id      INTEGER NOT NULL,
    total_tickets     INTEGER NOT NULL,
    tickets_sold      INTEGER NOT NULL,
    tickets_left      INTEGER NOT NULL,
    created_at        TIMESTAMP NOT NULL DEFAULT NOW(),
    -- FOREIGN KEY (organizer_id) REFERENCES event_organizers(id) ON DELETE CASCADE
    FOREIGN KEY (organizer_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_name) REFERENCES categories(category_name) ON DELETE CASCADE
);
CREATE TABLE attendees (
    first_name   TEXT NOT NULL,
    last_name    TEXT NOT NULL,
    email        TEXT NOT NULL CHECK (position('@' IN email) > 1),
    phone_number TEXT NOT NULL,
    tickets_number INTEGER NOT NULL,
    user_id      INTEGER NOT NULL,
    event_id     INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE
);

CREATE TABLE events_registered (
    user_id    INTEGER NOT NULL,
    event_id   INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE
);

CREATE TABLE reviews (
    review_id     SERIAL PRIMARY KEY,
    rating        INTEGER,
    user_id       INTEGER NOT NULL,
    eventId       INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (eventId) REFERENCES events(event_id) ON DELETE CASCADE
);

CREATE TABLE favorites (
    user_id          INTEGER NOT NULL,
    categories_id    INTEGER NOT NULL,
    categories_name  TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (categories_id) REFERENCES categories(category_id) ON DELETE CASCADE,
    FOREIGN KEY (categories_name) REFERENCES categories(category_name) ON DELETE CASCADE
);