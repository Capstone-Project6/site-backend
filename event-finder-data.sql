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

INSERT INTO categories(category_name, category_image) VALUES
    ('Sports', 'https://images.unsplash.com/photo-1504450758481-7338eba7524a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2849&q=80'),
    ('Food', 'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
    ('Music', 'https://images.unsplash.com/photo-1563841930606-67e2bce48b78?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'),
    ('Charity', 'https://images.unsplash.com/photo-1593113598332-cd288d649433?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
    ('Gaming', 'https://images.unsplash.com/photo-1511512578047-dfb367046420?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
    ('Party', 'https://images.unsplash.com/photo-1517456793572-1d8efd6dc135?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
    ('Entertainment', 'https://images.unsplash.com/photo-1565009520170-c809ddd9ac3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
    ('Education', 'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1082&q=80'),
    ('Business', 'https://images.unsplash.com/photo-1573164574511-73c773193279?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
    ('Social', 'https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2850&q=80');


INSERT INTO events(event_name, venue, city, price, state, category_name, beginning_date, beginning_time, end_time, description, event_image, is_series, is_online, organizer_id, total_tickets, tickets_sold, tickets_left) VALUES
    -- Bob
    ('Fun Games','Entertainment Center', 'San Jose', 3.99, 'California',  'Entertainment', 'August 17, 2021', '5:00pm', '9:00pm', 'Games that are extremely fun!', 'https://images.pexels.com/photos/4005325/pexels-photo-4005325.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 2, 5, 2, 3),
    -- Bobby
    ('Really Fun Games', 'Arcade', 'San Bernardino', 3.99, 'California', 'Entertainment', 'August 17, 2021', '5:00pm', '9:00pm', 'Games that are really fun', 'https://images.pexels.com/photos/1293269/pexels-photo-1293269.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', FALSE, FALSE, 3, 5, 2, 3),
    ('Sports', 'City Stadium',  'San Diego', 3.99, 'California', 'Sports', 'August 17, 2021', '5:00pm', '9:00pm','Sports that are really fun', 'https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 3, 5, 2, 3),
    ('Really Fun Stuff', 'Art Gallery', 'Fresno', 3.99, 'California', 'Entertainment', 'August 17, 2021', '5:00pm', '9:00pm', 'Stuff that is really fun', 'https://images.pexels.com/photos/862848/pexels-photo-862848.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 3, 5, 2, 3),
    ('Networking Event', 'Convention Center', 'Long Beach', 3.99, 'California', 'Business', 'August 17, 2021', '5:00pm', '9:00pm', 'Event to help local entrepreneurs expand their network', 'https://images.pexels.com/photos/2608517/pexels-photo-2608517.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 3, 5, 2, 3),
    -- Ryan
    ('Birthday Dinner', 'Ethiopian Restaurant', 'San Jose', 3.99, 'California', 'Party','August 17, 2021', '5:00pm', '9:00pm', 'Ryan''s Birthday Dinner', 'https://images.pexels.com/photos/1484516/pexels-photo-1484516.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 4, 5, 2, 3),
    -- Grace
    ('Concert', 'Concert Hall',  'San Francisco', 3.99, 'California', 'Music', 'August 17, 2021', '5:00pm', '9:00pm', 'Grace''s concert', 'https://images.pexels.com/photos/1864639/pexels-photo-1864639.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', FALSE, FALSE, 5, 5, 2, 3),
    -- Josh
    ('Activities', 'Lounge', 'Los Angeles', 35.99, 'California', 'Social', 'August 17, 2021', '5:00pm', '9:00pm', 'Some very fun activities', 'https://images.pexels.com/photos/4508641/pexels-photo-4508641.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 6, 5, 2, 3),
    ('Programming Sessions', 'Classroom', 'San Jose', 0.00,  'California', 'Education', 'August 17, 2021', '5:00pm', '9:00pm', 'Learn how to program in Python, Java, and C++', 'https://images.pexels.com/photos/6860464/pexels-photo-6860464.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 6, 5, 2, 3),
    -- Gamers
    ('Convention', 'Conference Hall', 'Santa Ana', 0.00,  'California', 'Gaming', 'August 17, 2021', '5:00pm', '9:00pm', 'Video game convention', 'https://images.pexels.com/photos/3945683/pexels-photo-3945683.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', FALSE, FALSE, 7, 5, 2, 3),
    -- Party People
    ('Party','Local Pool', 'Anaheim', 0.00, 'California', 'Party', 'August 17, 2021', '5:00pm', '9:00pm', 'Party people', 'https://images.pexels.com/photos/1071882/pexels-photo-1071882.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 8, 5, 2, 3),
    -- The Event Planner
    ('Huge event', 'Park', 'Bakersfield' , 4.99, 'California', 'Entertainment', 'August 17, 2021', '5:00pm', '9:00pm', 'An event that is really huge', 'https://images.pexels.com/photos/433452/pexels-photo-433452.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 9, 5, 2, 3),
    -- Event Creators
    ('Even more events', 'Circus', 'Oakland', 43.99, 'California', 'Entertainment', 'August 17, 2021', '5:00pm', '9:00pm', 'Events for all people to enjoy', 'https://images.pexels.com/photos/1652353/pexels-photo-1652353.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 10, 5, 2, 3),
    -- Linda
    ('Chess Tournament', 'Stage', 'Long Beach', 36.99, 'California', 'Sports', 'August 17, 2021', '5:00pm', '9:00pm', 'Linda''s Chess tournament', 'https://images.pexels.com/photos/139392/checkmate-chess-resignation-conflict-139392.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 11, 5, 2, 3),
    -- The Soccer Lovers
    ('Soccer Tournament', 'Stadium', 'Sacramento' , 33.99, 'California', 'Sports', 'August 17, 2021', '5:00pm', '9:00pm', 'Soccer Tournament for all people', 'https://images.pexels.com/photos/3621104/pexels-photo-3621104.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 12, 5, 2, 3),
    -- Lisa
    ('Meet and Greet', 'Park', 'Fresno' , 21.99, 'California', 'Social', 'August 17, 2021', '5:00pm', '9:00pm', 'Meet people in a fun, inclusive environment!', 'https://images.pexels.com/photos/325521/pexels-photo-325521.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 13, 5, 2, 3),
    -- The Singers 
    ('Small concert', 'Concert Hall', 'San Francisco', 4.99, 'California','Music', 'August 17, 2021', '5:00pm', '9:00pm','Small concert for local musicians', 'https://images.pexels.com/photos/1885823/pexels-photo-1885823.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 14, 5, 2, 3),
    -- Scholars
    ('Informational Seminar', 'Conference Hall', 'San Jose', 6.99, 'California', 'Education', 'August 17, 2021', '5:00pm', '9:00pm', 'Learn about ways to save the environment', 'https://images.pexels.com/photos/1708936/pexels-photo-1708936.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 15, 5, 2, 3),
    -- Gordon Ramsay
    ('Cook-off','Fondue Restaurant', 'Los Angeles', 19.99,  'California', 'Food',  'August 17, 2021', '5:00pm', '9:00pm', 'Have a cook-off in front of Gordon Ramsay for the grand prize!', 'https://images.pexels.com/photos/2290070/pexels-photo-2290070.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 16, 5, 2, 3),
    -- The Party People
    ('Rooftop Party', 'Loft', 'San Diego' , 8.99, 'California', 'Party', 'August 17, 2021', '5:00pm', '9:00pm', 'Come join us for a rooftop party', 'https://images.pexels.com/photos/5935249/pexels-photo-5935249.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', FALSE, FALSE, 17, 5, 2, 3);