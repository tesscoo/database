--I WORKED WITH NICK CHOM. ON THIS PROJECT


DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS clubs;
DROP TABLE IF EXISTS membership;


CREATE TABLE students (
  NetID VARCHAR(9) NOT NULL,
  Name VARCHAR(30) NOT NULL,
  Major VARCHAR(20),
  Mobile INTEGER(10),
  Second Email VARCHAR(30),
  Entry DATE,
  Graduation DATE,
  PRIMARY KEY(NetID)
  );

CREATE TABLE clubs (
  Name VARCHAR(30) NOT NULL,
  Dues INTEGER(3) default 0,
  Department VARCHAR(20) NOT NULL,
  Description VARCHAR(160),
  President VARCHAR(30),
  Secretary VARCHAR(30),
  Treasurer VARCHAR(30),
  Meeting Space VARCHAR(30),
  Email VARCHAR(30),
  URL VARCHAR(30),
  PRIMARY KEY(Name)
  );

CREATE TABLE membership (
  Club Name VARCHAR(30) NOT NULL,
  Student NetID VARCHAR(9) NOT NULL,
  Entry DATE,
  Exit DATE,
  PRIMARY KEY (Club Name, Student NetID),
  FOREIGN KEY (NetID) REFERENCES students (NetID),
  FOREIGN KEY (Club Name) REFERENCES clubs (Name)
)

LOAD DATA LOCAL INFILE "students.csv"
INTO TABLE students
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(NetID, Name, Major, Mobile, Email, Entry, Graduation)

LOAD DATA LOCAL INFILE "clubs.csv"
INTO TABLE students
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(Name, Dues, Department, Description, President, Secretary, Treasurer, Meeting_Space, Email, URL)

LOAD DATA LOCAL INFILE "membership.csv"
INTO TABLE students
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(Club_Name, NetID, Entry, Exit)
