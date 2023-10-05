-- Visit definition
DROP TABLE IF EXISTS Visit;

CREATE TABLE Visit (
	ID SERIAL primary key,
	PatientId INTEGER,
	VisitDate TIMESTAMP,
	VisitDescription VARCHAR(255),
	DefaultChapterID INTEGER
);

select * from visit;
---

drop TABLE IF exists chapter;
-- Chapter Definition
CREATE TABLE Chapter (
	ID SERIAL primary key,
	NAME VARCHAR(255),
	Code VARCHAR(50),
	EditionCode VARCHAR(10)
);

INSERT INTO Chapter ( NAME, Code, EditionCode) VALUES
	 ('Upper Extremity', 'UPPER',  3),
	('Lower Extremity', 'LOWER', 3),
	('Spine', 'SPINE', 3),
	('Central & Peripheral Nervous System', 'NERVOUS',  3),
	('Respiratory System', 'RESP', 3),
	('Cardiovascular System', 'CARDIO', 3),
	('Hemotopoietic System', 'HEMO', 3),
	('Visual System', 'VISUAL', 3),
	('Ear, Nose & Throat', 'ENT', 3);
-----

select * from chapter_section;

drop table if exists chapter_section;

create table chapter_section (
	ID serial primary key,
	name varchar(255),
	code varchar(255),
	chapterID int,
	orderID int
);

select * from chapter_section 

insert into chapter_section (name, code, chapterID)
select
	'Amputation' as name,
	'AMP' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		0 as orderID
union
select
	'Thumb' as name,
	'THB' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
	1 as orderID
union
select
	'Index' as name,
	'INDEX' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		2 as orderID
union
select
	'Middle' as name,
	'MIDDLE' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		3 as orderID
union
select
	'Ring' as name,
	'RING' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		4 as orderID
union
select
	'Little' as name,
	'LITTLE' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		5 as orderID
union
select
	'Wrist' as name,
	'WRIST' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		6 as orderID
union
select
	'Shoulder' as name,
	'SHOULDER' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		7 as orderID
union
select
	'Elbow' as name,
	'ELBOW' as code,
	(select id from chapter c where c.code = 'UPPER' and c.editioncode = '3') as chapterID,
		8 as orderID

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


select * from patient_impairment pi3 ;
select * from patient_impairment pi2  where pi2.patientid  = 1