\c event_finder

INSERT INTO users (first_name, last_name, password, email, is_organizer) VALUES
    ('S','V', '$2b$13$neNzAgmSUBo2vFQjV90BMegFQ0HEe.w.rgkaAlhBAw1899Mf5ZOmS', 'syd@io', FALSE),
    -- Bob Smith password: ilovetoparty
    ('Bob', 'Smith', '$2b$13$CXKoCBwSxpTWH62NymVJpOcIPhxKpZNUm1DBBDpZkZePSU80xeiIW','thatguybob@io', FALSE ),
    -- Bobby Johnson password: gymbro123
    ('Bobby', 'Johnson', 'gymbro123', 'bobby.johnson@io', FALSE),
    -- Ryan Davis
    ('Ryan', 'Davis', 'ryanissocool', 'ryandavis@io', FALSE),
    -- Grace Jones
    ('Grace', 'Jones', 'sunshine', 'theamazinggrace@io', FALSE),
    -- Josh Hernandez
    ('Josh', 'Hernandez', 'viper15', 'joshH@apple.io', FALSE),
    -- Gamers
    ('Gamers', 'Incorporated', 'thebeststartup', 'gamerinc@xyz.com', FALSE),
    -- Party People
    ('Party', 'People', 'funtimes', 'partypeople@xyz.net', FALSE),
    -- The Event Planners
    ('The Event Planners', 'Co', 'letshaveaparty', 'theeventplanners@io', FALSE),
    -- Event Creators
    ('Event', 'Creators', 'eventcreatorxyz', 'eventcreators@co', FALSE),
    -- Linda Miller
    ('Linda', 'Miller', 'ilovetoread', 'LindaMiller@io', FALSE),
    -- The Soccer Lovers
    ('The Soccer Lovers', 'Inc', 'goooooal!!!', 'thesoccerlovers@123', FALSE),
    -- Lisa Garcia
    ('Lisa', 'Garcia', 'bunnybunny*', 'thelisagarcia@xo', FALSE),
    -- The Singers
    ('The Singers', 'LLC', 'figarofigaro', 'thesingers@io', FALSE),
    -- Scholars
    ('Scholars', 'Club', 'booksmartxyz', 'thescholarsclub@io', FALSE),
    -- Gordon Ramsey
    ('Gordon', 'Ramsay', 'ilovegoodcuisine', 'GordonRamsay@eats.io', FALSE),
    -- The Party people
    ('The Party People', 'LLC', 'partyparty#', 'thepartypeople@io', FALSE);

INSERT INTO events(event_name, venue, description, event_image, is_series, is_online, organizer_id, total_tickets, tickets_sold, tickets_left) VALUES
    -- Bob
    ('Fun Games','California', 'Games that are extremely fun!', 'imageurl', FALSE, FALSE, 2, 5, 2, 3),
    -- Bobby
    ('Really Fun Games', 'California', 'Games that are really fun', 'imageurl', FALSE, FALSE, 3, 5, 2, 3),
    ('Sports', 'California', 'Sports that are really fun', 'imageurl', FALSE, FALSE, 3, 5, 2, 3),
    ('Really Fun Stuff', 'California', 'Stuff that is really fun', 'imageurl', FALSE, FALSE, 3, 5, 2, 3),
    ('Networking Event', 'California', 'Event to help local entrepreneurs expand their network', 'imageurl', FALSE, FALSE, 3, 5, 2, 3),
    -- Ryan
    ('Birthday Party', 'California', 'Ryan''s Birthday Party', 'imageurl', FALSE, FALSE, 4, 5, 2, 3),
    -- Grace
    ('Concert', 'California', 'Grace''s concert', 'imageurl', FALSE, FALSE, 5, 5, 2, 3),
    -- Josh
    ('Activities', 'California', 'Some very fun activities', 'imageurl', FALSE, FALSE, 6, 5, 2, 3),
    ('Programming Sessions', 'California', 'Learn how to program in Python, Java, and C++', 'imageurl', FALSE, FALSE, 6, 5, 2, 3),
    -- Gamers
    ('Convention', 'California', 'Video game convention', 'imageurl', FALSE, FALSE, 7, 5, 2, 3),
    -- Party People
    ('Party', 'California', 'Party people', 'imageurl', FALSE, FALSE, 8, 5, 2, 3),
    -- The Event Planners
    ('Huge event', 'California', 'An event that is really huge', 'imageurl', FALSE, FALSE, 9, 5, 2, 3),
    -- Event Creators
    ('Even more events', 'California', 'Events for all people to enjoy', 'imageurl', FALSE, FALSE, 10, 5, 2, 3),
    -- Linda
    ('Chess Tournament', 'California', 'Linda''s Chess tournament', 'imageurl', FALSE, FALSE, 11, 5, 2, 3),
    -- The Soccer Lovers
    ('Soccer Tournament', 'California', 'Soccer Tournament for all people', 'imageurl', FALSE, FALSE, 12, 5, 2, 3),
    -- Lisa
    ('Meet and Greet', 'California', 'Meet people in a fun, inclusive environment!', 'imageurl', FALSE, FALSE, 13, 5, 2, 3),
    -- The Singers 
    ('Small concert', 'California', 'Small concert for local musicians', 'imageurl', FALSE, FALSE, 14, 5, 2, 3),
    -- Scholars
    ('Informational Seminar', 'California', 'Learn about ways to save the environment', 'imageurl', FALSE, FALSE, 15, 5, 2, 3),
    -- Gordon Ramsay
    ('Cook-off', 'California', 'Have a cook-off in front of Gordon Ramsay for the grand prize!', 'imageurl', FALSE, FALSE, 16, 5, 2, 3),
    -- The Party People
    ('Rooftop Party', 'California', 'Come join us for a rooftop party', 'imageurl', FALSE, FALSE, 17, 5, 2, 3);
    