INSERT INTO Student 
   VALUES (1, 'Jennifer', 'Brown', '12 Forest Road, AC53010, Littleville', NULL);

INSERT INTO Course 
   VALUES (1021, 'Introduction to databases', '2009-01-15', NULL);

UPDATE Course 
   SET Starts = '2009-01-16', Lecturer = 'Burroughs Anthony'
   WHERE CourseID = 1021;

DELETE FROM Course 
   WHERE courseId = 1010;
