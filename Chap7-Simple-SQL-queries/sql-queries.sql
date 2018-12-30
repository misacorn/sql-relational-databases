SELECT * FROM Book;

SELECT Title, Price from Book;

SELECT Title, Price from Book
	WHERE Price < 20;

SELECT Title, Price from Book
	WHERE (Price -5) < 20;

SELECT * FROM Author
	WHERE forename = 'Theodore';

SELECT Title, Pages, Price, Published from Book
	WHERE Pages < 500 AND Price > 20;

SELECT * from Publisher
	WHERE city = 'Little Town' OR city = 'Creek-on-Trent';

SELECT Title from Book
	WHERE (authorid = 204 AND pages > 1000) OR (authorid = 202 AND price > 20.0); 