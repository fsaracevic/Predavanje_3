DROP database IF EXISTS doktor;

CREATE database doktor;

USE doktor;

CREATE table pacijenti (
	ID int(50) UNSIGNED AUTO_INCREMENT NOT NULL,
	name varchar(255) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE table sestre(
	ID int(50) UNSIGNED AUTO_INCREMENT NOT NULL,
	name varchar(255) NOT NULL,
	PRIMARY KEY (ID)	
);

CREATE table lijecenje(
	ID int(50) UNSIGNED AUTO_INCREMENT NOT NULL,
	pacijent_id int(50) UNSIGNED NOT NULL,
	datum_lijecenja datetime,
	PRIMARY KEY (ID),
	FOREIGN KEY (pacijent_id) REFERENCES pacijenti (ID)


);

CREATE table sestra_lijecenje(
	ID int(50) UNSIGNED AUTO_INCREMENT NOT NULL,	
	sestra_id int(50) UNSIGNED NOT NULL,
	lijecenje_id int(50) UNSIGNED NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (sestra_id) REFERENCES sestre (ID),
	FOREIGN KEY (lijecenje_id) REFERENCES lijecenje (ID)
);

INSERT INTO sestre(name) values ("Ana");
INSERT INTO sestre(name) values ("Iva");
INSERT INTO pacijent(name) values ("Marko");
INSERT INTO lijecenje(pacijent_id, datum_lijecenja) values (1,"2023-03-16 12:42:43");
INSERT INTO sestre_lijecenje(sestra_id, lijecenje_id) values (1,1);
INSERT INTO sestre_lijecenje(sestra_id, lijecenje_id) values (2,1);


