-- Visit definition
DROP TABLE Visit;

CREATE TABLE Visit (
	ID SERIAL primary key,
	PatientId INTEGER,
	VisitDate TIMESTAMP,
	VisitName VARCHAR(255),
	DefaultChapterID INTEGER
);

select * from visit;
---

drop table chapter;
-- Chapter Definition
CREATE TABLE Chapter (
	ID SERIAL primary key,
	NAME VARCHAR(255),
	EditionCode VARCHAR(10)
);

INSERT INTO Chapter ( NAME, EditionCode) VALUES
	 ('Upper Extremity',  3),
	('Lower Extremity', 3),
	('Spine', 3),
	('Central & Peripheral Nervous System',  3),
	('Respiratory System',  3),
	('Cardiovascular System', 3),
	('Hemotopoietic System', 3),
	('Visual System', 3),
	('Ear, Nose & Throat', 3);
-----


select * from occupation o;
select * from industry order by id;

-- [DominantSideLookup] definition

-- Drop table

-- DROP TABLE [DominantSideLookup];

--CREATE TABLE DominantSide (
--	ID SERIAL primary KEY,
--	DESCRIPTION VARCHAR(20)
--);
--CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12855_12856 ON [DominantSide] ([ID]);
--
--INSERT INTO DomninantSide ( DESCRIPTION)  values
--('Left'), ('Right'), ('Neither')
