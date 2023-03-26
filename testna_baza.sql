DROP database IF EXISTS vlasnici_zivotinja;

Create database vlasnici_zivotinja;

USE vlasnici_zivotinja;

Create table Persons (
    id INT(50) UNSIGNED AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

Create table Animals(
    id INT(50) UNSIGNED AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    dateOfBirth DATE,
    person_id INT(50) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(person_id) references Persons(id)
);

INSERT INTO Persons(name) values ("Matej");
INSERT INTO Persons(name) values ("Ivo");
INSERT INTO Persons(name) values ("Pero");

INSERT INTO Animals(name, dateOfBirth, person_id) values ("zuco", NULL ,1);
INSERT INTO Animals(name, dateOfBirth, person_id) values ("garo", "2021.03.21",1);

Select * from Animals;
Select * from Persons;