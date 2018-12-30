CREATE TABLE Student (
	studentid integer	primary key,
	forename	varchar(32)	not null,
	surname	varchar(60)	not null,
	address	varchar(100),
	phonenum	varchar(15)
	);

CREATE TABLE Course (
	courseid	integer	primary key,
	name	varchar(32)	not null,
	starts	date
	);