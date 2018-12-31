SELECT SUM(instock) FROM Stock;

SELECT MIN(Price) FROM Book;

SELECT AVG(Pages) 
  FROM Book
  WHERE Pages > 200;

SELECT AVG(Price), MAX(Price), MIN(Price) 
  FROM Book
  WHERE Price > 20 AND Price < 30;