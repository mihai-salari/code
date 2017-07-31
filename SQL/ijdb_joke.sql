# Create joke table
CREATE TABLE joke (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    joketext TEXT,
    jokedate DATE NOT NULL,
	authorid INT
) DEFAULT CHARACTER SET utf8 ENGINE=INNODB;

# Create author table
CREATE TABLE author (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(255)
) DEFAULT CHARACTER SET utf8 ENGINE=INNODB;

# Add authorid column to joke table
# ALTER TABLE joke ADD COLUMN authorid INT;

# Create category table
CREATE TABLE category (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255)	
) DEFAULT CHARACTER SET utf8 ENGINE=INNODB;

# Create a lookup-table
CREATE TABLE jokecategory (
	jokeid INT NOT NULL,
	categoryid INT NOT NULL,
	PRIMARY KEY (jokeid, categoryid)
) DEFAULT CHARACTER SET utf8 ENGINE=INNODB;