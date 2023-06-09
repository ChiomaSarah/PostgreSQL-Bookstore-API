CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE books (
	book_id  uuid DEFAULT uuid_generate_v4 (),
	book_title VARCHAR ( 200 ) NOT NULL,
	book_author VARCHAR ( 50 ) NOT NULL,
	book_rating INTEGER NOT NULL,
	book_genre VARCHAR ( 50 ) NOT NULL,
	book_publication_date DATE NOT NULL
	);


INSERT INTO books (book_title, book_author, book_rating, book_genre, book_publication_date) VALUES ('Throne of Glass', 'Sarah J. Maas', 4.19, 'Fantasy', '2012-08-12'),
('The Color of Magic', 'Terry Pratchett', 3.9, 'Fantasy', '1983-11-24'),
('A Thousand Ships', 'Natalie Haynes', 4.1, 'Fantasy', '2019-05-02'),
('Red Queen', 'Victoria Aveyard', 4.0, 'Fantasy', '2016-06-07'),
('The Threat Below', 'J. S. Latshaw', 4.3, 'Fantasy', '2015-07-29'),
('Configured', 'Janetta Penner', 3.9, 'Fantasy', '2016-10-20'),
 ('Big Lies in a Small Town', 'Diane Chamberlain', 4.1, 'Art', '2012-08-12'),
 ('Steal like an Artist', 'Austin Kleon', 3.9, 'Art', '2020-01-14'),
 ('The History of Beauty', 'Umberto Eco', 3.8, 'Art', '2010-09-21'),
 ('Leonardo Da Vinci', 'Walter Isaacson', 4.1, 'Art', '2017-10-17'),
 ('Becoming', 'Michelle Obama', 4.5, 'Biography', '2018-11-13'),
 ('Elon Musk', 'Ashlee Vance', 4.2, 'Biography', '2017-01-24'),
 ('Cleopatra: A Life', 'Stacy Schiff', 3.6, 'Biography', '2011-09-01'),
 ('Matilda', 'Roald Dahl', 4.3, 'Children', '1988-10-01'),
 ('How the Grinch Stole Christmas', 'Dr. Seuss', 4.3, 'Children', '1957-10-12'),
 ('Peter Pan', 'J. M. Barrie', 4.0, 'Children', '2011-10-11'),
 ('Legacy', 'Nora Roberts', 4.2, 'Fiction', '2021-02-25'),
 ('Life of Pi', 'Yann Martel', 3.9, 'Fiction', '2001-09-11'),
 ('Gone Girl', 'Gillian Flynn', 4.0, 'Thriller', '2012-05-24'),
 ('Choose Me', 'Tess Gerritsen', 4.0, 'Thriller', '2021-07-01'),
 ('Dark Matter', 'Blake Crouch', 4.1, 'Thriller', '2016-07-26'),
 ('You', 'Caroline Kepnes', 3.9, 'Thriller', '2014-09-25'),
 ('The Couple Next Door', 'Sharri Lapena', 3.7, 'Thriller', '2016-07-14'),
 ('The Fault in Our Stars', 'John Green', 4.1, 'Romance', '2012-01-10'),
 ('The Kiss Quotient', 'Helen Hoang', 3.8, 'Romance', '2018-05-30'),
 ('It Ends with Us', 'Colleen Hoover', 4.4, 'Romance', '2016-08-02'),
 ('Anna and the French Kiss', 'Stephanie Perkins', 4.0, 'Romance', '2010-12-02'),
 ('The Duke and I', 'Julia Quinn', 3.8, 'Romance', '2000-01-05'),
 ('Fahrenheit 451', 'Ray Bradbury', 3.9, 'Sci-Fi', '1953-10-19'),
 ('The Hunger Games', 'Suzanne Collins', 3.8, 'Sci-Fi', '2008-09-14'),
 ('Divergent', 'Veronica Roth', 4.1, 'Sci-Fi', '2011-04-26'),
 ('Cinder', 'Marissa Meyer', 4.1, 'Sci-Fi', '2012-01-03'),
 ('The Last Monument', 'Michael C. Grumley', 4.1, 'Sci-Fi', '2020-03-30'),
 ('Stranger in Strange Island', 'Robert A. Heinlein', 3.9, 'Sci-Fi', '1961-06-01'),
 ('Rich Dad Poor Dad', 'RObert T. Kiyosaki', 4.0, 'Business', '2017-04-11'),
 ('Think and Grow Rich', 'Napoleon Hill', 4.1, 'Business', '2005-08-18'),
 ('Make Your Bed: Little Things that can Change Your Life', 'William H. McRaven', 3.9, 'Business', '2017-04-04'),
 ('Built to Last: Successful Habits of Visionary Companies', 'James C. Collins', 4.0, 'Business', '1994-10-26'),
 ('Burnout: The Secret to Unlocking the Stress Cycle', 'Emily Nagoski, Amelia Nagoski', 4.0, 'Business', '2019-03-26');