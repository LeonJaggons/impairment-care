

-----------------------------------------------------

-- LanguageLookup definition

DROP TABLE IF EXISTS Language;

CREATE TABLE Language (
	LanguageId SERIAL PRIMARY KEY,
	LanguageDescription VARCHAR(20)
	
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_13167_13168 ON Language (LanguageId);

ALTER TABLE Language
RENAME COLUMN LanguageId TO ID;

ALTER TABLE Language
RENAME COLUMN LanguageDescription TO Description;

-----------------------------------------------------

-- GenderLookup definition

DROP TABLE IF EXISTS Gender;

CREATE TABLE Gender (
	GenderId SERIAL PRIMARY KEY,
	GenderDescription VARCHAR(20)
	
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12875_12876 ON Gender (GenderId);

INSERT INTO Gender (GenderId,GenderDescription) VALUES
	 (1,'Male'),
	 (2,'Female');

ALTER TABLE Gender
RENAME COLUMN GenderId TO ID;

ALTER TABLE Gender
RENAME COLUMN GenderDescription TO Description;

-- SELECT * FROM GENDER
-----

drop table if exists occupationcat;
create table occupationcat (
	id serial primary key,
	description varchar(40)
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12875_12878 ON occupationcat (id);

insert into occupationcat (description)
values ('Skilled'), ('Sedentary'), ('Manual'), ('Average');

select * from occupationcat;
---
drop table if exists maritalstatus;
create table maritalstatus (
	id serial primary key,
	description varchar(40)
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12875_12879 ON maritalstatus (id);

insert into maritalstatus (description)
values ('Married'), ('Single'), ('Divorced'),('Widow/Widower');

select * from maritalstatus;
-----------------------------------------------------

-- Ethnicity definition

DROP TABLE IF EXISTS Ethnicity;

CREATE TABLE Ethnicity (
	EthnicityId SERIAL PRIMARY KEY,
	EthnicityDescription VARCHAR(50)
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12870_12871 ON Ethnicity (EthnicityId);

INSERT INTO Ethnicity (EthnicityId,EthnicityDescription) VALUES
	 (1,'White'),
	 (2,'Black or African-American'),
	 (3,'Hispanic'),
	 (4,'Asian or Pacific Islander'),
	 (5,'Native American Indian'),
	 (6,'Other');


ALTER TABLE Ethnicity
RENAME COLUMN EthnicityId TO ID;

ALTER TABLE Ethnicity
RENAME COLUMN EthnicityDescription TO Description;

-- SELECT * FROM Ethnicity;
-----------------------------------------------------

-- ActivityLevelLookup definition

DROP TABLE IF EXISTS ActivityLevel;

CREATE TABLE ActivityLevel (
	ActivityLevelId SERIAL PRIMARY KEY,
	ActivityLevelDescription VARCHAR(50)
	
);
CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12830_12831 ON ActivityLevel (ActivityLevelId);

INSERT INTO ActivityLevel (ActivityLevelId,ActivityLevelDescription) VALUES
	 (1,'Contact sports'),
	 (2,'Highly aerobic'),
	 (3,'Moderately aerobic'),
	 (4,'Sedentary but active'),
	 (5,'Sedentary');

ALTER TABLE ActivityLevel
RENAME COLUMN ActivityLevelId TO ID;

ALTER TABLE ActivityLevel
RENAME COLUMN ActivityLevelDescription TO Description;

-- SELECT * FROM ActivityLevel;
-----------------------------------------------------

-- Country definition

DROP TABLE IF EXISTS Country;

CREATE TABLE Country (
	CountryId SERIAL PRIMARY KEY,
	CountryDescription VARCHAR(255)
);

INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (1,'Afghanistan'),
	 (2,'Albania'),
	 (3,'Algeria'),
	 (4,'American Samoa'),
	 (5,'Andorra'),
	 (6,'Angola'),
	 (7,'Anguilla'),
	 (8,'Antarctica'),
	 (9,'Antigua and Barbuda'),
	 (10,'Argentina');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (11,'Armenia'),
	 (12,'Aruba'),
	 (13,'Australia'),
	 (14,'Austria'),
	 (15,'Azerbaijan'),
	 (16,'Bahamas'),
	 (17,'Bahrain'),
	 (18,'Bangladesh'),
	 (19,'Barbados'),
	 (20,'Belarus');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (21,'Belgium'),
	 (22,'Belize'),
	 (23,'Benin'),
	 (24,'Bermuda'),
	 (25,'Bhutan'),
	 (26,'Bolivia'),
	 (27,'Bosnia and Herzegovina'),
	 (28,'Botswana'),
	 (29,'Bouvet Island'),
	 (30,'Brazil');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (31,'British Indian Ocean Territory'),
	 (32,'Brunei'),
	 (33,'Bulgaria'),
	 (34,'Burkina Faso'),
	 (35,'Burundi'),
	 (36,'Cambodia'),
	 (37,'Cameroon'),
	 (38,'Canada'),
	 (39,'Cape Verde'),
	 (40,'Cayman Islands');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (41,'Central African Republic'),
	 (42,'Chad'),
	 (43,'Chile'),
	 (44,'China'),
	 (45,'Christmas Island'),
	 (46,'Cocos (Keeling) Islands'),
	 (47,'Colombia'),
	 (48,'Comoros'),
	 (49,'Congo'),
	 (50,'Cook Islands');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (51,'Costa Rica'),
	 (52,'Cote D''Ivoire (Ivory Coast)'),
	 (53,'Croatia (Hrvatska)'),
	 (54,'Cuba'),
	 (55,'Cyprus'),
	 (56,'Czech Republic'),
	 (57,'Dem Rep of Congo (Zaire)'),
	 (58,'Denmark'),
	 (59,'Djibouti'),
	 (60,'Dominica');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (61,'Dominican Republic'),
	 (62,'East Timor'),
	 (63,'Ecuador'),
	 (64,'Egypt'),
	 (65,'El Salvador'),
	 (66,'Equatorial Guinea'),
	 (67,'Eritrea'),
	 (68,'Estonia'),
	 (69,'Ethiopia'),
	 (70,'Falkland Islands (Islas Malvinas)');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (71,'Faroe Islands'),
	 (72,'Fiji Islands'),
	 (73,'Finland'),
	 (74,'France'),
	 (75,'French Guiana'),
	 (76,'French Polynesia'),
	 (77,'French Southern Territories'),
	 (78,'Gabon'),
	 (79,'Gambia'),
	 (80,'Georgia');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (81,'Germany'),
	 (82,'Ghana'),
	 (83,'Gibraltar'),
	 (84,'Greece'),
	 (85,'Greenland'),
	 (86,'Grenada'),
	 (87,'Guadeloupe'),
	 (88,'Guam'),
	 (89,'Guatemala'),
	 (90,'Guinea');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (91,'Guinea-Bissau'),
	 (92,'Guyana'),
	 (93,'Haiti'),
	 (94,'Heard Island and McDonald Islands'),
	 (95,'Honduras'),
	 (96,'Hong Kong S. A. R'),
	 (97,'Hungary'),
	 (98,'Iceland'),
	 (99,'India'),
	 (100,'Indonesia');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (101,'Iran'),
	 (102,'Iraq'),
	 (103,'Ireland'),
	 (104,'Israel'),
	 (105,'Italy'),
	 (106,'Jamaica'),
	 (107,'Japan'),
	 (108,'Jordan'),
	 (109,'Kazakhstan'),
	 (110,'Kenya');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (111,'Kiribati'),
	 (112,'Korea'),
	 (113,'Kuwait'),
	 (114,'Kyrgyzstan'),
	 (115,'Laos'),
	 (116,'Latvia'),
	 (117,'Lebanon'),
	 (118,'Lesotho'),
	 (119,'Liberia'),
	 (120,'Libya');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (121,'Liechtenstein'),
	 (122,'Lithuania'),
	 (123,'Luxembourg'),
	 (124,'Macau S.A.R.'),
	 (125,'F.Y.R.O. Macedonia'),
	 (126,'Madagascar'),
	 (127,'Malawi'),
	 (128,'Malaysia'),
	 (129,'Maldives'),
	 (130,'Mali');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (131,'Malta'),
	 (132,'Marshall Islands'),
	 (133,'Martinique'),
	 (134,'Mauritania'),
	 (135,'Mauritius'),
	 (136,'Mayotte'),
	 (137,'Mexico'),
	 (138,'Micronesia'),
	 (139,'Moldova'),
	 (140,'Monaco');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (141,'Mongolia'),
	 (142,'Montserrat'),
	 (143,'Morocco'),
	 (144,'Mozambique'),
	 (145,'Myanmar'),
	 (146,'Namibia'),
	 (147,'Nauru'),
	 (148,'Nepal'),
	 (149,'Netherlands'),
	 (150,'Netherlands Antilles');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (151,'New Caledonia'),
	 (152,'New Zealand'),
	 (153,'Nicaragua'),
	 (154,'Niger'),
	 (155,'Nigeria'),
	 (156,'Niue'),
	 (157,'Norfolk Island'),
	 (158,'North Korea'),
	 (159,'Northern Mariana Islands'),
	 (160,'Norway');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (161,'Oman'),
	 (162,'Pakistan'),
	 (163,'Palau'),
	 (164,'Panama'),
	 (165,'Papua New Guinea'),
	 (166,'Paraguay'),
	 (167,'Peru'),
	 (168,'Philippines'),
	 (169,'Pitcairn'),
	 (170,'Poland');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (171,'Portugal'),
	 (172,'Puerto Rico'),
	 (173,'Qatar'),
	 (174,'Reunion'),
	 (175,'Romania'),
	 (176,'Russia'),
	 (177,'Rwanda'),
	 (178,'St. Kitts and Nevis'),
	 (179,'St. Lucia'),
	 (180,'St. Vincent and the Grenadines');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (181,'Samoa'),
	 (182,'San Marino'),
	 (183,'Sao Tome and Principe'),
	 (184,'Saudi Arabia'),
	 (185,'Senegal'),
	 (186,'Seychelles'),
	 (187,'Sierra Leone'),
	 (188,'Singapore'),
	 (189,'Slovakia'),
	 (190,'Slovenia');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (191,'Solomon Islands'),
	 (192,'Somalia'),
	 (193,'South Africa'),
	 (194,'South Georgia and the South Sandwich Islands'),
	 (195,'Spain'),
	 (196,'Sri Lanka'),
	 (197,'Saint Helena'),
	 (198,'Saint Pierre and Miquelon'),
	 (199,'Sudan'),
	 (200,'Suriname');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (201,'Svalbard'),
	 (202,'Swaziland'),
	 (203,'Sweden'),
	 (204,'Switzerland'),
	 (205,'Syria'),
	 (206,'Taiwan'),
	 (207,'Tajikistan'),
	 (208,'Tanzania'),
	 (209,'Thailand'),
	 (210,'Togo');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (211,'Tokelau'),
	 (212,'Tonga'),
	 (213,'Trinidad and Tobago'),
	 (214,'Tunisia'),
	 (215,'Turkey'),
	 (216,'Turkmenistan'),
	 (217,'Turks and Caicos Islands'),
	 (218,'Tuvalu'),
	 (219,'Uganda'),
	 (220,'Ukraine');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (221,'United Arab Emirates'),
	 (222,'United Kingdom'),
	 (223,'United States'),
	 (224,'United States Minor Outlying Islands'),
	 (225,'Uruguay'),
	 (226,'Uzbekistan'),
	 (227,'Vanuatu'),
	 (228,'Vatican City State (Holy See)'),
	 (229,'Venezuela'),
	 (230,'Vietnam');
INSERT INTO Country (CountryId,CountryDescription) VALUES
	 (231,'Virgin Islands (British)'),
	 (232,'Virgin Islands (US)'),
	 (233,'Wallis And Futuna'),
	 (234,'Yemen'),
	 (235,'Yugoslavia'),
	 (236,'Zambia'),
	 (237,'Zimbabwe'),
	 (999,'Other');


ALTER TABLE Country
RENAME COLUMN CountryId TO ID;

ALTER TABLE Country
RENAME COLUMN CountryDescription TO Name;

CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12845_12846 ON Country (ID);

-----------------------------------------------------

-- DominantSide definition

DROP TABLE IF EXISTS DominantSide;

DROP TABLE IF EXISTS DominantSide;

CREATE TABLE DominantSide (
	ID SERIAL primary KEY,
	DESCRIPTION VARCHAR(20)
	
);

CREATE UNIQUE INDEX SYS_IDX_SYS_PK_12855_12856 ON DominantSide (ID);

INSERT INTO DominantSide (ID,DESCRIPTION) VALUES
	 (1,'Left'),
	 (2,'Right'),
	 (3,'Neither');
	
SELECT * FROM DominantSide;
--
-----------------------------------------------------

-- Patient definition

DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Patients;
CREATE TABLE Patient (
	ID SERIAL primary key,
	MedicalRecordNumber VARCHAR(20),
	DominantSideId INTEGER,
	ActivityLevelId INTEGER,
	BirthCountryId INTEGER,
	GenderId INTEGER,
	MaritalId INTEGER,
	LanguageId INTEGER,
	EthnicityId INTEGER,
	SuffixId INTEGER,
	MiddleName VARCHAR(50),
	NamePrefixId INTEGER,
	LastName VARCHAR(50),
	FirstName VARCHAR(50),
	DateOfBirth TIMESTAMP,
	EmailAddress VARCHAR(50),
	City VARCHAR(50),
	Address VARCHAR(50),
	State VARCHAR(50),
	Zip VARCHAR(15),
	SocialSecurityNumber VARCHAR(20),
	DayPhone VARCHAR(50),
	CountryId INTEGER,
	EveningPhone VARCHAR(50),
	Fax VARCHAR(50),
	Height INTEGER,
	Weight INTEGER,
	HeartRate INTEGER,
	LivingConditionId INTEGER,
	AssistedLivingId INTEGER,
	SocialSecurityId INTEGER,
	DisabilityId INTEGER,
	WorkersCompensationId INTEGER,
	SmokerId INTEGER,
	LastEditedBy VARCHAR(20),
	LastEditedOn TIMESTAMP,
	CreatedBy VARCHAR(20),
	CreatedOn TIMESTAMP,
	BloodPressure VARCHAR(20),
	AlternateID INTEGER,
	County VARCHAR(50),
	PatientText VARCHAR(10485760),
	DateOfExam TIMESTAMP,
	DateOfInjury TIMESTAMP,
	OccupationCodePD VARCHAR(10),
	OccupationNamePD VARCHAR(200),
	AvgWeeklyEarningPD NUMERIC(7,2),
	OccupationCatID INTEGER,
	InsuranceId INTEGER,
	ClaimNumber VARCHAR(50),
	ClaimAdjuster VARCHAR(50),
	EditionId INTEGER,
	EmployerId INTEGER,
	LawyerID INTEGER,
	EducationID INTEGER,
	TreatingPhysicianId INTEGER,
	DateOfMMI TIMESTAMP,
	IsFourthEdition INTEGER DEFAULT 0,
	CreatedDate TIMESTAMP,
	CreatedByUser VARCHAR(100)
	
);

select "occupationcatid" from patient;

SELECT * FROM PATIENT p;

-----------------------------------------------------

-- Occupation definition

DROP TABLE Occupation;

DROP TABLE IF EXISTS Occupation;
DROP TABLE IF EXISTS Occupations;
CREATE TABLE Occupation (
ID serial primary key,
	GroupNo VARCHAR(50),
	OccupDsc VARCHAR(50),
	IndustryDsc VARCHAR(50)
);

INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Alarm Service Technician ','Business Ser.'),
	 ('321','Auto Painter ','Any Industry'),
	 ('212','Baggage screener, airport ','Air Trans.'),
	 ('493','Bicycle messenger ','Business Ser.'),
	 ('390','Bounty hunter ','Business Ser.'),
	 ('493','Bowler, professional ','Amuse. & Rec.'),
	 ('350','Cable car operator ','R.R. Trans.'),
	 ('120','CAD designer ','Profess. & Kin.'),
	 ('211','Card dealer ','Amuse. & Rec.'),
	 ('120','Cartographer ','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Checker, warehouse ','Retail Trade'),
	 ('322','Coffeemaker ','hotel & rest.'),
	 ('111','Community organization worker ','Social Ser.'),
	 ('250','Community service officer, patrol ','Social Ser.'),
	 ('320','Computer set-up person ','Business Ser.'),
	 ('250','Courier ','Any Industry'),
	 ('322','Dietary Aide, Hospital Services ','Medical Ser.'),
	 ('490','Fire inspector ','government serv.'),
	 ('213','Flagger, Traffic Control ','Construction'),
	 ('221','Glass blower, hand ','Glass Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('390','Golf instructor ','Amuse. & Rec.'),
	 ('493','Golfer, professional ','Amuse. & Rec.'),
	 ('211','Hand Labeler ','Any Industry'),
	 ('460','Inmate, laborer ','any industry'),
	 ('460','Loader/unloader ','Any Industry'),
	 ('210','Newscaster ','Radio-Tv Broad.'),
	 ('212','Nurse case manager ','Medical Ser.'),
	 ('350','Painter, traffic line ','Construction'),
	 ('250','Patrol officer, volunteer ','government serv.'),
	 ('214','Pit boss/floor person ','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Produce Clerk, Retail ','Retail Trade'),
	 ('212','School Principal ','education'),
	 ('360','Set-up person/trade show ','Retail Trade'),
	 ('493','Ski instructor ','Amuse. & Rec.'),
	 ('240','Ski lift operator ','Amuse. & Rec.'),
	 ('590','Ski patroller ','Amuse. & Rec.'),
	 ('370','Smog Technician ','Automotive Ser.'),
	 ('212','Surgical technician ','Medical Ser.'),
	 ('213','Ticket inspector, transportation ','R.R. Trans.'),
	 ('380','Truss Builder, Construction ','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('481','Waysman ','Ship-Boat Mfg.'),
	 ('482','Wind Turbine Technician ','Construction; Utilities'),
	 ('111','Abstractor','Profess. & Kin.'),
	 ('110','Academic Dean','Education'),
	 ('110','Account Executive','Business Ser.'),
	 ('111','Account Information Clerk','Utilities'),
	 ('111','Accountant','Profess. & Kin.'),
	 ('111','Accountant, Property','Profess. & Kin.'),
	 ('111','Accounting Clerk','Clerical'),
	 ('590','Acrobat','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('210','Actor','Amuse. & Rec.'),
	 ('310','Acupressurist','Medical Ser.'),
	 ('211','Addressing Machine Operator','Clerical'),
	 ('111','Administrative Analyst','Any Industry'),
	 ('211','Administrative Clerk','Clerical'),
	 ('212','Administrator, Health Care  Facility','Medical Ser.'),
	 ('111','Admissions Evaluator','Education'),
	 ('212','Air Analyst','Profess. & Kin.'),
	 ('481','Air Conditioning Installer  Serv., Window Unit','Construction'),
	 ('480','Air Hammer Operator','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Air Traffic Control  Specialist, Tower','Government Ser.'),
	 ('380','Aircraft Body Repairer','Air Trans.'),
	 ('380','Aircraft Bonded Structures  Repairer','Aircraft Mfg.'),
	 ('341','Aircraft Service Attendant','Air Trans.'),
	 ('460','Aircraft Service Worker','Air Trans.'),
	 ('380','Airframe And Power Plant  Mechanic','Aircraft Mfg.'),
	 ('213','Airline Transportation Agent','Air Trans.'),
	 ('322','Airplane Flight Attendant','Air Trans.'),
	 ('213','Airplane Inspector','Air Trans.'),
	 ('250','Airplane Pilot, Commercial','Air Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Alarm Signal Operator','Any Industry'),
	 ('560','Ambulance Attendant','Medical Ser.'),
	 ('560','Ambulance Driver','Medical Ser.'),
	 ('340','Amusement Park Attendant','Amuse. & Rec.'),
	 ('210','Amusement Park Entertainer','Amuse. & Rec.'),
	 ('220','Anesthesiologist','Medical Ser.'),
	 ('310','Angiogram Technologist','Medical Ser.'),
	 ('491','Animal Keeper','Amuse. & Rec.'),
	 ('491','Animal Ride Attendant','Amuse. & Rec.'),
	 ('390','Animal Trainer','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('210','Announcer','Radio-Tv Broad.'),
	 ('460','Anodizer','Any Industry'),
	 ('380','Antenna Installer','Any Industry'),
	 ('380','Antenna Installer, Satellite Communications','Any Industry'),
	 ('110','Appeals Referee','Government Ser.'),
	 ('111','Appointment Clerk','Clerical'),
	 ('212','Appraiser, Art','Any Industry'),
	 ('212','Appraiser, Business Eqpt.','Any Industry'),
	 ('213','Appraiser, Real Estate','Real Estate'),
	 ('330','Arbor Press Operator','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Arc Cutter','Welding'),
	 ('212','Architect','Profess. & Kin.'),
	 ('111','Archivist','Profess. & Kin.'),
	 ('320','Armature Bander','Any Industry'),
	 ('350','Armored Car Driver','Business Ser.'),
	 ('390','Armored Car Guard','Business Ser.'),
	 ('111','Art Director','Motion Picture'),
	 ('221','Artificial Flower Maker','Button & Notion'),
	 ('220','Artificial Plastic Eye Maker','Optical Goods'),
	 ('351','Asphalt Distributor Tender','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('351','Asphalt Paving Machine  Operator','Construction'),
	 ('480','Asphalt Raker','Construction'),
	 ('351','Asphalt Surface Heater  Operator','Construction'),
	 ('120','Assembler','Jewelry-Silver.'),
	 ('221','Assembler','House. Appl.'),
	 ('221','Assembler, Electric Motor','Elec. Equip.'),
	 ('370','Assembler, Internal  Combustion Engine','Engine-Turbine'),
	 ('370','Assembler, Motor Vehicle','Auto. Mfg.'),
	 ('221','Assembler, Musical  Instruments','Musical Inst.'),
	 ('320','Assembler, Office Machines','Office Machines');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Assembler, Production','Any Industry'),
	 ('120','Assembler, Semiconductor','Electron. Comp.'),
	 ('221','Assembler, Small Products','Any Industry'),
	 ('380','Assembler, Subassembly','Aircraft Mfg.'),
	 ('380','Assembler-Installer, General','Aircraft Mfg.'),
	 ('590','Athlete, Professional','Amuse. & Rec.'),
	 ('390','Athletic Trainer','Amuse. & Rec.'),
	 ('111','Attendance Clerk','Education'),
	 ('111','Auction Clerk','Retail Trade'),
	 ('210','Auctioneer','Retail Trade');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Audio Operator','Radio-Tv Broad.'),
	 ('221','Audio Video Repairer','Any Industry'),
	 ('251','Audiovisual Production  Specialist','Profess. & Kin.'),
	 ('111','Audit Clerk','Clerical'),
	 ('111','Auditor','Profess. & Kin.'),
	 ('251','Auditor, Field','Profess. & Kin.'),
	 ('330','Autoclave Operator','Aircraft Mfg.'),
	 ('370','Automated Equipment  Installer','Machinery Mfg.'),
	 ('370','Automobile Accessories  Installer','Automotive Ser.'),
	 ('370','Automobile Assembler','Auto. Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Automobile Body Repairer','Automotive Ser.'),
	 ('340','Automobile Detailer','Automotive Ser.'),
	 ('111','Automobile Locator','Retail Trade'),
	 ('214','Automobile Repair Service  Estimator','Automotive Ser.'),
	 ('370','Automobile Service Station  Mechanic','Automotive Ser.'),
	 ('321','Automobile Upholsterer','Automotive Ser.'),
	 ('340','Automobile Washer &  Polisher','Automotive Ser.'),
	 ('460','Automobile Wrecker','Wholesale Tr.'),
	 ('380','Awning Maker','Tex. Prod., Nec.'),
	 ('240','Babysitter','Domestic Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Baggage Handler','R.R. Trans.'),
	 ('214','Bagger','Retail Trade; Groceries'),
	 ('490','Bailiff','Government Ser.'),
	 ('322','Baker','Hotel & Rest.'),
	 ('420','Baker','Bakery Products'),
	 ('460','Baker Helper','Bakery Products'),
	 ('322','Bakery Supervisor','Bakery Products'),
	 ('230','Band Sawmill Operator','Saw. & Plan.'),
	 ('330','Band-Sawing Machine  Operator','Fabrication, Nec'),
	 ('211','Bank Clerk','Financial');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('290','Barber','Personal Ser.'),
	 ('330','Barrel Assembler','Wood. Container'),
	 ('460','Barrel Filler','Beverage'),
	 ('322','Bartender','Hotel & Rest.'),
	 ('221','Basket Maker','Wood. Container'),
	 ('230','Batch Still Operator','Chemical'),
	 ('321','Battery Assembler, Dry Cell','Elec. Equip.'),
	 ('321','Battery Repairer','Any Industry'),
	 ('290','Beautician','Personal Ser.'),
	 ('230','Bed Laster','Boot & Shoe');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('491','Beekeeper','Agriculture'),
	 ('360','Bellhop','Hotel & Rest.'),
	 ('221','Bench Worker','Optical Goods'),
	 ('330','Bending Machine Operator','Any Industry'),
	 ('320','Bicycle Repairer','Any Industry'),
	 ('480','Billboard & Sign Erector','Fabrication, Nec'),
	 ('480','Billboard Erector Helper','Construction'),
	 ('112','Billing Clerk','Clerical'),
	 ('213','Billposter','Business Ser.'),
	 ('230','Bindery Worker','Print. & Pub.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Biochemist','Profess. & Kin.'),
	 ('110','Biology Specimen Technician','Profess. & Kin.'),
	 ('320','Biomedical Equipment  Technician','Profess. & Kin.'),
	 ('430','Blacksmith','Forging'),
	 ('460','Blacksmith Helper','Forging'),
	 ('480','Blaster','Mining; Construction'),
	 ('332','Blender','Petrol. Refin.'),
	 ('240','Blind Aide','Personal Ser.'),
	 ('330','Blister Machine Operator','Any Industry'),
	 ('220','Blocker And Cutter, Contact  Lens','Optical Goods');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Blocker, Hand','Hat & Cap'),
	 ('230','Blueprinting Machine  Operator','Any Industry'),
	 ('380','Boat Repairer','Ship-Boat Mfg.'),
	 ('380','Boat Rigger','Retail Trade'),
	 ('380','Boatbuilder, Wood','Ship-Boat Mfg.'),
	 ('390','Bodyguard','Personal Ser.'),
	 ('332','Boiler Operator','Any Industry'),
	 ('332','Boiler Tender','Any Industry'),
	 ('430','Boilermaker','Struct. Metal'),
	 ('460','Boilermaker Helper','Struct. Metal');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Bonding Agent','Business Ser.'),
	 ('322','Boner, Meat','Meat Products'),
	 ('221','Book Repairer','Any Industry'),
	 ('320','Bookbinder','Print. & Pub.'),
	 ('112','Bookkeeper','Clerical'),
	 ('112','Bookkeeper, General Ledger','Clerical'),
	 ('351','Boom Conveyor Operator','Any Industry'),
	 ('330','Boring Machine Operator','Woodworking'),
	 ('230','Bottle Packer','Beverage'),
	 ('390','Bouncer','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Bow Maker','Any Industry'),
	 ('331','Bowling Ball Molder','Toy-Sport Equip.'),
	 ('230','Box Blank Machine Operator','Wood. Container'),
	 ('460','Box Folding Machine  Operator','Paper Goods'),
	 ('321','Box Maker, Paperboard','Any Industry'),
	 ('321','Box Maker, Wood','Wood. Container'),
	 ('230','Box Printing Machine  Operator','Any Industry'),
	 ('321','Box Spring Maker','Furniture'),
	 ('211','Braille Operator','Print. & Pub.'),
	 ('111','Braille Proofreader','Nonprofit Org.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Brake Press Operator','Any Industry'),
	 ('370','Brake Repairer','Automotive Ser.'),
	 ('330','Brazing Machine Operator','Welding'),
	 ('330','Bread Wrapping Machine  Operator','Any Industry'),
	 ('332','Brewery Cellar Worker','Beverage'),
	 ('331','Brick And Tile Making  Machine Operator','Brick & Tile'),
	 ('481','Bricklayer','Construction'),
	 ('481','Bricklayer Apprentice','Construction'),
	 ('480','Bricklayer Helper','Construction'),
	 ('482','Bridge Maintenance Worker','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('482','Bridge Worker','Construction'),
	 ('331','Briquette Machine Operator','Fabrication, Nec'),
	 ('330','Broaching Machine Operator,  Production','Machine Shop'),
	 ('321','Broom Stitcher','Fabrication, Nec'),
	 ('492','Bucker','Logging'),
	 ('111','Budget Analyst','Government Ser.'),
	 ('321','Buffer','Any Industry'),
	 ('230','Buffing Machine Tender,  Automatic','Any Industry'),
	 ('480','Building Cleaner, Outside','Any Industry'),
	 ('213','Building Inspector','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('213','Building Inspector','Insurance'),
	 ('380','Building Maintenance  Repairer','Any Industry'),
	 ('351','Bulldozer Operator','Any Industry'),
	 ('380','Burglar Alarm  Installer/Repairer','Business Ser.'),
	 ('330','Burning Machine Operator','Welding'),
	 ('250','Bus Driver','Motor Trans.'),
	 ('322','Bus Person','Hotel & Rest.'),
	 ('110','Business Manager','Amuse. & Rec.'),
	 ('111','Business Representative,  Labor Union','Profess. & Kin.'),
	 ('420','Butcher, All-Round','Meat Products');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('322','Butcher, Meat','Hotel & Rest.'),
	 ('240','Butler','Domestic Ser.'),
	 ('460','Buttermaker','Dairy Products'),
	 ('230','Buttonhole And Button  Sewing Machine Operator','Garment'),
	 ('320','Cabinetmaker','Woodworking'),
	 ('320','Cable Assembler And Swager','Aircraft Mfg.'),
	 ('380','Cable Installer-Repairer','Utilities'),
	 ('380','Cable Maintainer','Utilities'),
	 ('480','Cable Puller','Construction'),
	 ('380','Cable Splicer','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('481','Cable Television Installer','Radio-Tv Broad.'),
	 ('380','Cable Tester','Tel. & Tel.'),
	 ('360','Caddie','Amuse. & Rec.'),
	 ('322','Cafeteria Attendant','Hotel & Rest.'),
	 ('480','Cager','Mine & Quarry'),
	 ('221','Cake Decorator','Bakery Products'),
	 ('120','Calligrapher','Profess. & Kin.'),
	 ('360','Camera Operator','Motion Picture'),
	 ('220','Camera Repairer','Photo. Appar.'),
	 ('390','Camp Counselor','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('340','Campground Attendant','Amuse. & Rec.'),
	 ('221','Candlemaker','Fabrication, Nec'),
	 ('331','Candy Maker','Sugar & Conf.'),
	 ('221','Caner','Furniture'),
	 ('230','Can-Filling And Closing  Machine Tender','Can. & Preserv.'),
	 ('230','Cannery Worker, Hand Or  Machine','Can. & Preserv.'),
	 ('420','Canvas Repairer','Any Industry'),
	 ('320','Capacitor Assembler','Elec. Equip.'),
	 ('230','Cap-Lining Machine Operator','Any Industry'),
	 ('322','Car Hop','Hotel & Rest.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Carbide Powder Processor','Machine Shop'),
	 ('110','Cardiac Monitor Technician','Medical Ser.'),
	 ('212','Cardiopulmonary  Technologist','Medical Ser.'),
	 ('240','Cardroom Attendant','Amuse. & Rec.'),
	 ('360','Cargo Agent','Air Trans.'),
	 ('380','Carpenter','Construction'),
	 ('380','Carpenter Apprentice','Construction'),
	 ('480','Carpenter Helper','Construction'),
	 ('380','Carpenter, Acoustical','Construction'),
	 ('380','Carpenter, Maintenance','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Carpenter, Railcar','Railroad Equip.'),
	 ('481','Carpenter, Rough','Construction'),
	 ('380','Carpenter, Ship','Ship-Boat Mfg.'),
	 ('480','Carpet Cutter','Retail Trade'),
	 ('481','Carpet Layer','Retail Trade'),
	 ('480','Carpet Layer Helper','Retail Trade'),
	 ('321','Carpet Sewer','Carpet & Rug'),
	 ('230','Carpet Weaver','Carpet & Rug'),
	 ('460','Carton-Forming Machine  Tender','Paper Goods'),
	 ('330','Carton-Forming Machine Operator','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Cartoonist, Motion Pictures','Motion Picture'),
	 ('111','Caseworker','Social Ser.'),
	 ('320','Cash Register Servicer','Any Industry'),
	 ('111','Cashier','Clerical'),
	 ('214','Cashier-Checker','Retail Trade'),
	 ('230','Casing Machine Operator','Meat Products'),
	 ('330','Caster','Smelt. & Refin.'),
	 ('331','Caster','Jewelry-Silver.'),
	 ('320','Casting Repairer','Any Industry'),
	 ('322','Caterer','Personal Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('491','Cattle Herder','Agriculture'),
	 ('480','Caulker','Construction'),
	 ('330','Cellophane Bag Machine  Operator','Paper Goods'),
	 ('481','Cement Mason','Construction'),
	 ('480','Cement Mason Helper','Construction'),
	 ('480','Cement Sprayer, Nozzle','Construction'),
	 ('480','Cementer, Oilwell','Petrol. & Gas'),
	 ('331','Center Machine Operator','Sugar & Conf.'),
	 ('380','Central Office Repairer','Tel. & Tel.'),
	 ('331','Centrifugal Extractor  Operator','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Centrifuge Operator, Plasma  Processing','Medical Ser.'),
	 ('230','Centrifuge Separator  Operator','Chemical'),
	 ('110','Cephalometric Analyst','Medical Ser.'),
	 ('331','Ceramic Coater, Machine','Any Industry'),
	 ('460','Chain Offbearer','Saw. & Plan.'),
	 ('492','Chain Saw Operator','Logging'),
	 ('331','Char Conveyor Tender','Sugar & Conf.'),
	 ('230','Charge Preparation  Technician','Electron. Comp.'),
	 ('492','Chaser','Logging'),
	 ('250','Chauffeur','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Check Cashier','Business Ser.'),
	 ('360','Checker','Laundry & Rel.'),
	 ('214','Checker, Grocery','Retail Trade'),
	 ('360','Checker, Unloader','Clerical'),
	 ('240','Checkroom Attendant','Any Industry'),
	 ('322','Cheese Cutter','Dairy Products'),
	 ('322','Cheesemaker','Dairy Products'),
	 ('322','Chef De Froid','Hotel & Rest.'),
	 ('212','Chemical Engineer','Profess. & Kin.'),
	 ('212','Chemical Laboratory  Technician','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Chemical Preparer','Chemical'),
	 ('212','Chemist','Profess. & Kin.'),
	 ('240','Child Monitor','Domestic Ser.'),
	 ('111','Child Support Officer','Government Ser.'),
	 ('340','Child-Care Attendant,  Handicapped','Education'),
	 ('340','Children''s Institution  Attendant','Any Industry'),
	 ('341','Chimney Sweep','Any Industry'),
	 ('460','Chipper, Rough','Any Industry'),
	 ('311','Chiropractor','Medical Ser.'),
	 ('311','Chiropractor Assistant','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Chocolate Production  Machine Operator','Sugar & Conf.'),
	 ('560','Choke Setter','Logging'),
	 ('492','Chopper','Logging'),
	 ('491','Christmas Tree Farm Worker','Forestry'),
	 ('320','Chucking Lathe Operator','Machine Shop'),
	 ('330','Circular Sawyer, Stone','Stonework'),
	 ('212','Civil Engineer','Profess. & Kin.'),
	 ('251','Claim Adjuster, Field','Insurance; Business Ser.'),
	 ('111','Claim Adjuster, Inside','Insurance'),
	 ('111','Claims Clerk','Insurance');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Clay Modeler','Any Industry'),
	 ('340','Cleaner, Commercial Or  Institutional','Any Industry'),
	 ('340','Cleaner, Equipment','Any Industry'),
	 ('340','Cleaner, Hospital','Medical Ser.'),
	 ('340','Cleaner, Laboratory  Equipment','Any Industry'),
	 ('341','Cleaner, Window','Any Industry'),
	 ('210','Clergy Member','Profess. & Kin.'),
	 ('111','Clerk, Advertising Space','Print. & Pub.'),
	 ('111','Clerk, Animal Hospital','Medical Ser.'),
	 ('112','Clerk, Billing','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Clerk, Collection','Clerical'),
	 ('111','Clerk, Contract, Automobile','Retail Trade'),
	 ('111','Clerk, Court','Government Ser.'),
	 ('111','Clerk, Credit','Clerical'),
	 ('111','Clerk, Election','Government Ser.'),
	 ('214','Clerk, File','Clerical'),
	 ('211','Clerk, General','Clerical'),
	 ('211','Clerk, Inventory Control','Clerical'),
	 ('214','Clerk, Sales','Retail Trade'),
	 ('360','Clerk, Shipping','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('112','Clerk, Statistical','Clerical'),
	 ('111','Clerk, Wire Transfer','Financial'),
	 ('112','Clerk-Typist','Clerical'),
	 ('110','Clinical Psychologist','Profess. & Kin.'),
	 ('330','Cloth Printer','Any Industry'),
	 ('221','Cloth Tester, Quality','Textile'),
	 ('390','Coach, Professional Athletes','Amuse. & Rec.'),
	 ('331','Coater Operator','Any Industry'),
	 ('331','Coating Machine Operator','Paper & Pulp'),
	 ('320','Cobbler','Boot & Shoe');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Coffee Roaster','Food Prep., Nec'),
	 ('230','Coil Winder','Elec. Equip.'),
	 ('221','Coil Winder, Repair','Any Industry'),
	 ('214','Coin Counter And Wrapper','Clerical'),
	 ('251','Coin Machine Collector','Business Ser.'),
	 ('370','Coin Machine Service Repairer','Svc. Ind. Mach.'),
	 ('111','Collection Clerk','Clerical'),
	 ('251','Collector, Outside','Clerical'),
	 ('230','Color Printer Operator','Photofinishing'),
	 ('111','Columnist/Commentator','Print. & Pub.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('240','Companion','Domestic Ser.'),
	 ('221','Compositor, Typesetter','Print. & Pub.'),
	 ('230','Compounder','Petrol. Refin.'),
	 ('360','Compressed Gas Plant Worker','Chemical'),
	 ('332','Compressor Operator','Any Industry'),
	 ('112','Computer Keyboard Operator','Clerical'),
	 ('230','Computer Operator,  Mainframe','Clerical'),
	 ('111','Computer Processing  Scheduler','Clerical'),
	 ('112','Computer Programmer','Profess. & Kin.'),
	 ('320','Computer Repairer','Office Machines');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Computer Security Specialist','Profess. & Kin.'),
	 ('111','Computer Support Analyst','Profess. & Kin.'),
	 ('351','Concrete Paving Machine  Operator','Construction'),
	 ('480','Concrete Stone Finisher','Concrete Prod.'),
	 ('480','Concrete Vibrator Operator','Construction'),
	 ('340','Conductor, All Rails','R.R. Trans.'),
	 ('213','Conductor, Passenger Car','R.R. Trans.'),
	 ('370','Construction Equipment  Mechanic','Construction'),
	 ('110','Consultant, Education','Education'),
	 ('230','Contact Lens Molder','Optical Goods');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Contour Band Saw Operator,  Vertical','Machine Shop'),
	 ('213','Contractor','Construction'),
	 ('120','Controls Designer','Profess. & Kin.'),
	 ('360','Conveyor Feeder-Offbearer','Any Industry'),
	 ('370','Conveyor Maintenance  Mechanic','Any Industry'),
	 ('360','Conveyor System Operator','Any Industry'),
	 ('360','Conveyor Tender','Any Industry'),
	 ('322','Cook','Domestic Ser.'),
	 ('322','Cook','Any Industry'),
	 ('322','Cook Assistant','Hotel & Rest.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('322','Cook, Chief','Hotel & Rest.'),
	 ('322','Cook, Fast Food','Hotel & Rest.'),
	 ('322','Cook, Pastry','Hotel & Rest.'),
	 ('322','Cook, Specialty','Hotel & Rest.'),
	 ('110','Coordinator, Skill-Training  Program','Government Ser.'),
	 ('111','Copy Reader','Print. & Pub.'),
	 ('111','Copy Writer','Profess. & Kin.'),
	 ('112','Copyist','Any Industry'),
	 ('480','Core Drill Operator','Any Industry'),
	 ('330','Coremaker','Paper Goods');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('331','Coremaker, Floor','Foundry'),
	 ('490','Correction Officer','Government Ser.'),
	 ('290','Cosmetologist','Personal Ser.'),
	 ('110','Counselor','Profess. & Kin.'),
	 ('390','Counselor, Camp','Amuse. & Rec.'),
	 ('322','Counter Attendant,  Cafeteria','Hotel & Rest.'),
	 ('111','Court Clerk','Government Ser.'),
	 ('112','Court Reporter','Clerical'),
	 ('491','Cowpuncher','Agriculture'),
	 ('360','Crane Follower','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Crane Hooker','Any Industry'),
	 ('351','Crane Operator','Any Industry'),
	 ('360','Crate Maker','Any Industry'),
	 ('111','Credit Authorizer','Clerical'),
	 ('111','Credit Clerk','Clerical'),
	 ('111','Credit Counselor','Profess. & Kin.'),
	 ('460','Cremator','Personal Ser.'),
	 ('111','Crew Scheduler','Air Trans.'),
	 ('230','Crimping Machine Operator','Any Industry'),
	 ('330','Crossband Layer','Millwork-Plywood');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Crusher Operator','Concrete Prod.'),
	 ('112','Cryptographic Machine  Operator','Clerical'),
	 ('330','Crystal Grower','Comm. Equip.'),
	 ('330','Crystal Slicer','Electron. Comp.'),
	 ('212','Curator','Museums'),
	 ('211','Currency Counter','Financial'),
	 ('340','Custodian','Any Industry'),
	 ('360','Custodian, Athletic  Equipment','Amuse. & Rec.'),
	 ('211','Custodian, Property','Government Ser.'),
	 ('213','Customer Service  Representative','Utilities');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('211','Customer Service Clerk','Retail Trade'),
	 ('212','Customs Broker','Financial'),
	 ('330','Cut-Off Saw Operator','Woodworking'),
	 ('330','Cut-Off Saw Operator, Metal','Machine Shop'),
	 ('230','Cutter','Photofinishing'),
	 ('330','Cutter Operator','Any Industry'),
	 ('230','Cutter, Machine','Any Industry'),
	 ('460','Cutting Machine Operator','Textile'),
	 ('230','Cutting Machine Operator,  Automated','Aircraft Mfg.'),
	 ('330','Cutting Machine Tender','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Cylinder Filler','Chemical'),
	 ('460','Cylinder Press Feeder','Print. & Pub.'),
	 ('120','Cytotechnologist','Medical Ser.'),
	 ('460','Dairy Processing Equipment  Operator','Dairy Products'),
	 ('590','Dancer','Amuse. & Rec.'),
	 ('111','Data Base Administrator','Profess. & Kin.'),
	 ('380','Data Communications  Installer','Any Industry'),
	 ('112','Data Entry Clerk','Clerical'),
	 ('221','Decal Applier','Any Industry'),
	 ('491','Deckhand','Water Trans., Fishing & Hunt.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('331','Decontaminator, Radioactive  Material','Any Industry'),
	 ('221','Decorator','Bakery Products'),
	 ('380','Decorator, Special Event','Any Industry'),
	 ('480','Decorator, Street And  Building','Any Industry'),
	 ('322','Deli Cutter-Slicer','Retail Trade'),
	 ('250','Deliverer, Car Rental','Automotive Ser.'),
	 ('250','Deliverer, Floral  Arrangements','Retail Trade'),
	 ('213','Deliverer, Non-Driving','Clerical'),
	 ('250','Deliverer, Pizza','Retail Trade'),
	 ('212','Demonstrator','Retail Trade');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Dental Assistant','Medical Ser.'),
	 ('220','Dental Hygienist','Medical Ser.'),
	 ('220','Dental Laboratory  Technician','Protective Dev.'),
	 ('220','Dentist','Medical Ser.'),
	 ('490','Deputy, Court','Government Ser.'),
	 ('480','Derrick Worker, Well Service','Petrol. & Gas'),
	 ('230','Design Printer, Balloon','Rubber Goods'),
	 ('490','Detective','Government Ser.'),
	 ('390','Detective, Store','Retail Trade'),
	 ('212','Dialysis Technician','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Die Casting Machine Operator','Foundry'),
	 ('330','Die Cutter','Any Industry'),
	 ('120','Die Designer','Machine Shop'),
	 ('320','Die Maker','Machine Shop'),
	 ('320','Die Sinker','Machine Shop'),
	 ('212','Dietitian, Clinical','Profess. & Kin.'),
	 ('322','Dining Room Attendant','Hotel & Rest.'),
	 ('351','Dinkey Operator','Any Industry'),
	 ('221','Dipper','Jewelry-Silver.'),
	 ('331','Dipper','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('110','Director, Fundraising','Nonprofit Org.'),
	 ('110','Director, Motion Picture','Motion Picture'),
	 ('212','Director, Recreation Center','Social Ser.'),
	 ('110','Director, Regulatory Agency','Government Ser.'),
	 ('110','Director, Research And  Development','Any Industry'),
	 ('110','Director, Service','Retail Trade'),
	 ('210','Director, Social','Hotel & Rest.'),
	 ('112','Directory Assistance  Operator','Tel. & Tel.'),
	 ('322','Dishwasher, Hand Or Machine','Hotel & Rest.'),
	 ('111','Dispatcher, Motor Vehicle','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Display Maker','Fabrication, Nec'),
	 ('330','Display Screen Fabricator','Electron. Comp.'),
	 ('360','Displayer, Merchandise','Retail Trade'),
	 ('460','Distillery Worker, General','Beverage'),
	 ('221','Distresser','Furniture'),
	 ('480','Ditch Digger','Construction'),
	 ('492','Diver','Any Industry'),
	 ('230','Dividing Machine Operator','Bakery Products'),
	 ('111','Document Preparer,  Microfilming','Business Ser.'),
	 ('491','Dog Catcher','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('491','Dog Groomer','Personal Ser.'),
	 ('251','Dog Licenser','Nonprofit Org.'),
	 ('560','Dolly Pusher','Radio-Tv Broad.'),
	 ('390','Double','Motion Picture'),
	 ('460','Dough Brake Machine  Operator','Bakery Products'),
	 ('322','Dough Molder, Hand','Bakery Products'),
	 ('322','Doughnut Maker','Bakery Products'),
	 ('330','Dowel Machine Operator','Woodworking'),
	 ('120','Drafter, Architectural','Profess. & Kin.'),
	 ('120','Drafter, Assistant','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Drafter, Civil','Profess. & Kin.'),
	 ('120','Drafter, Electrical','Profess. & Kin.'),
	 ('120','Drafter, Electromechanisms  Design','Profess. & Kin.'),
	 ('120','Drafter, Landscape','Profess. & Kin.'),
	 ('120','Drafter, Mechanical','Profess. & Kin.'),
	 ('351','Dragline Operator','Any Industry'),
	 ('380','Drapery Hanger','Retail Trade'),
	 ('110','Drawings Checker,  Engineering','Profess. & Kin.'),
	 ('221','Dressmaker','Any Industry'),
	 ('230','Drier Operator','Food Prep., Nec');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('331','Drier Operator','Chemical'),
	 ('330','Drill Press Operator','Machine Shop'),
	 ('330','Drill Press Operator,  Numerical Control','Machine Shop'),
	 ('321','Driller, Hand','Any Industry'),
	 ('240','Drive-In Theater Attendant','Amuse. & Rec.'),
	 ('350','Driver, Newspaper Delivery','Wholesale Tr.'),
	 ('251','Driver''s License Examiner','Government Ser.'),
	 ('430','Drophammer Operator','Aircraft Mfg.'),
	 ('430','Drum Straightener','Any Industry'),
	 ('340','Dry Cleaner','Laundry & Rel.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Dry Wall Applicator','Construction'),
	 ('331','Dry-Press Operator','Brick & Tile'),
	 ('481','Duct Installer','Construction'),
	 ('330','Dynamite Packing Machine  Operator','Chemical'),
	 ('212','Echocardiograph Technician','Medical Ser.'),
	 ('110','Editor, Managing, Newspaper','Print. & Pub.'),
	 ('111','Editor, Newspaper','Print. & Pub.'),
	 ('111','Editor, Publications','Print. & Pub.'),
	 ('112','Editorial Writer','Print. & Pub.'),
	 ('221','Egg Candler','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('482','Electric Crew Forman','Any Industry'),
	 ('380','Electric Meter Installer','Utilities'),
	 ('221','Electric Motor Assembler','Elec. Equip.'),
	 ('320','Electric Motor Control Unit  Assembler','Elec. Equip.'),
	 ('320','Electric Sign Assembler','Fabrication, Nec'),
	 ('221','Electrical Appliance  Repairer, Small','Any Industry'),
	 ('460','Electrical Appliance  Uncrater','Any Industry'),
	 ('370','Electrical Appliance Servicer','Any Industry'),
	 ('212','Electrical Engineer','Profess. & Kin.'),
	 ('221','Electrical Instrument  Repairer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Electrical Technician','Profess. & Kin.'),
	 ('380','Electrician','Construction'),
	 ('380','Electrician','Ship-Boat Mfg.'),
	 ('380','Electrician Apprentice','Construction'),
	 ('380','Electrician Helper','Any Industry'),
	 ('370','Electrician, Automotive','Automotive Ser.'),
	 ('380','Electrician, Maintenance','Any Industry'),
	 ('380','Electrician, Powerhouse','Utilities'),
	 ('460','Electroless Plater, Printed  Circuit Board Panels','Electron. Comp.'),
	 ('290','Electrologist','Personal Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('220','Electromechanical  Technician','Inst. & App.'),
	 ('320','Electromedical Equipment  Repairer','Any Industry'),
	 ('212','Electromyographic  Technician','Medical Ser.'),
	 ('221','Electronic Component  Processor','Electron. Comp.'),
	 ('221','Electronics Assembler','Comm. Equip.'),
	 ('212','Electronics Design Engineer','Profess. & Kin.'),
	 ('212','Electronics Technician','Profess. & Kin.'),
	 ('221','Electronics Tester','Comm. Equip.'),
	 ('351','Elevating Grader Operator','Construction'),
	 ('482','Elevator Constructor','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Elevator Examiner And  Adjuster','Any Industry'),
	 ('460','Elevator Operator, Freight','Any Industry'),
	 ('380','Elevator Repairer','Any Industry'),
	 ('111','Eligibility Worker','Government Ser.'),
	 ('420','Embalmer','Personal Ser.'),
	 ('331','Embosser','Any Industry'),
	 ('230','Embossing Press Operator','Print. & Pub.'),
	 ('460','Emergency Medical  Technician','Medical Ser.'),
	 ('111','Employee Relations  Specialist','Profess. & Kin.'),
	 ('111','Employment Interviewer','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Engine Lathe Operator','Machine Shop'),
	 ('111','Engineer, Aeronautical  Design','Aircraft Mfg.'),
	 ('213','Engineer, Aeronautical Test','Aircraft Mfg.'),
	 ('212','Engineer, Agricultural','Profess. & Kin.'),
	 ('212','Engineer, Automotive','Auto. Mfg.'),
	 ('111','Engineer, Biomedical','Profess. & Kin.'),
	 ('212','Engineer, Chemical','Profess. & Kin.'),
	 ('212','Engineer, Civil','Profess. & Kin.'),
	 ('212','Engineer, Electronics Design','Profess. & Kin.'),
	 ('111','Engineer, Electro-Optical','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Engineer, Factory Lay-Out','Profess. & Kin.'),
	 ('213','Engineer, Field Service','Profess. & Kin.'),
	 ('212','Engineer, Mechanical','Profess. & Kin.'),
	 ('111','Engineer, Nuclear','Profess. & Kin.'),
	 ('111','Engineer, Packaging','Profess. & Kin.'),
	 ('111','Engineer, Power Distribution','Utilities'),
	 ('111','Engineer, Product Safety','Profess. & Kin.'),
	 ('212','Engineer, Railroad','Profess. & Kin.'),
	 ('213','Engineer, Soils','Profess. & Kin.'),
	 ('320','Engraver, Hand, Hard Metals','Engraving');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Engraver, Hand, Soft Metals','Engraving; Jewelry'),
	 ('230','Engraver, Machine','Engraving'),
	 ('213','Environmental Analyst','Profess. & Kin.'),
	 ('111','Equal Opportunity  Representative','Government Ser.'),
	 ('340','Equipment Cleaner','Any Industry'),
	 ('370','Equipment Installer, Vehicles','Any Industry'),
	 ('111','Escrow Officer','Profess. & Kin.'),
	 ('111','Estate Planner','Insurance'),
	 ('213','Estimator/Cruiser','Forestry'),
	 ('221','Etched Circuit Processor','Electron. Comp.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Etcher','Engraving'),
	 ('320','Etcher, Hand','Print. & Pub.'),
	 ('370','Evaporative Cooler  Installer','Any Industry'),
	 ('111','Examiner','Government Ser.'),
	 ('390','Exercise Physiologist','Medical Ser.'),
	 ('491','Exerciser, Horse','Amuse. & Rec.'),
	 ('380','Exhibit Builder','Museums'),
	 ('111','Expediter','Clerical'),
	 ('360','Expediter, Material','Clerical'),
	 ('380','Experimental Aircraft  Mechanic','Aircraft Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('213','Exterminator','Business Ser.'),
	 ('480','Exterminator, Termite','Business Ser.'),
	 ('213','Extra, Actor','Amuse. & Rec.; Motion Picture'),
	 ('330','Extruder Operator','Rubber Goods'),
	 ('220','Eyeglass Lens Cutter','Optical Goods'),
	 ('230','Fabric Stretcher','Furniture'),
	 ('320','Fabricating Machine  Operator, Metal','Any Industry'),
	 ('221','Fabricator, Foam Rubber','Any Industry'),
	 ('330','Fabricator/Assembler, Metal  Products','Any Industry'),
	 ('210','Faculty Member, College Or  University','Education');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('492','Faller','Logging'),
	 ('492','Faller, Timber','Logging'),
	 ('491','Farm Laborer, General','Agriculture'),
	 ('351','Farm Machine Operator','Agriculture'),
	 ('491','Farmer, General','Agriculture'),
	 ('491','Farmworker, Fruit','Agriculture'),
	 ('491','Farmworker, Vegetable','Agriculture'),
	 ('120','Fashion Artist','Retail Trade'),
	 ('251','Fashion Coordinator','Retail Trade'),
	 ('212','Fashion Designer','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('322','Fast Foods Worker','Hotel & Rest.'),
	 ('460','Feeder','Print. & Pub.'),
	 ('331','Felting Machine Operator','Tex. Prod., Nec.'),
	 ('481','Fence Erector','Construction'),
	 ('330','Fiberglass Laminator','Ship-Boat Mfg.;Vehicles Nec.'),
	 ('330','Fiberglass Machine Operator','Any Industry'),
	 ('213','Field Engineer','Radio-Tv Broad.'),
	 ('214','File Clerk','Clerical'),
	 ('221','Filler','Tex. Prod., Nec.'),
	 ('230','Film Developer','Motion Picture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('214','Film Or Tape Librarian','Clerical'),
	 ('230','Film Or Videotape Editor','Motion Picture'),
	 ('230','Film Printer','Motion Picture'),
	 ('331','Filter Operator','Any Industry'),
	 ('460','Filter Press Operator','Any Industry'),
	 ('320','Final Assembler','Office Machines'),
	 ('110','Financial Aids Officer','Education'),
	 ('110','Financial Planner','Profess. & Kin.'),
	 ('120','Fingernail Former','Personal Ser.'),
	 ('320','Fire Extinguisher Repairer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('490','Fire Fighter','Any Industry'),
	 ('490','Fire Lookout','Forestry'),
	 ('490','Fire Ranger','Forestry'),
	 ('332','Firer, High Pressure','Any Industry'),
	 ('320','Firesetter','Elec. Equip.'),
	 ('360','Fireworks Display Specialist','Any Industry'),
	 ('490','Fish And Game Warden','Government Ser.'),
	 ('322','Fish Cleaner','Can. & Preserv.'),
	 ('491','Fish Farmer','Fishing & Hunt.'),
	 ('491','Fish Hatchery Laborer','Fishing & Hunt.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('492','Fisher, Diving','Fishing & Hunt.'),
	 ('491','Fisher, Line','Fishing & Hunt.'),
	 ('491','Fisher, Net','Fishing & Hunt.'),
	 ('481','Fitter','Construction, Pipe Lines'),
	 ('430','Fitter, Metal','Any Industry'),
	 ('320','Fixture Repairer-Fabricator','Any Industry'),
	 ('230','Flatwork Finisher','Laundry & Rel.'),
	 ('322','Flight Attendant','Air Trans.'),
	 ('212','Flight Engineer','Air Trans.'),
	 ('211','Flight Information Expediter','Air Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Floor Finisher Helper','Construction'),
	 ('380','Floor Layer','Construction'),
	 ('221','Florist','Retail Trade'),
	 ('460','Flour Blender','Grain-Feed Mills'),
	 ('230','Folder Seamer, Automatic','Any Industry'),
	 ('230','Folding Machine Operator','Print. & Pub.'),
	 ('330','Folding Machine Operator','Paper Goods'),
	 ('330','Folding Machine Operator','Textile'),
	 ('322','Food Assembler, Kitchen','Hotel & Rest.'),
	 ('490','Forest Fire Fighter','Forestry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('492','Forest Worker','Forestry'),
	 ('213','Forester','Profess. & Kin.'),
	 ('491','Forester Aide','Forestry'),
	 ('460','Forge Helper','Forging'),
	 ('430','Forging Press Operator','Forging'),
	 ('351','Forklift Operator','Any Industry'),
	 ('481','Form Builder','Construction'),
	 ('480','Form Stripper','Construction'),
	 ('480','Form Tamper','Construction'),
	 ('480','Form Tamper Operator','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Former, Hand','Any Industry'),
	 ('331','Forming Machine Operator','Glass Mfg.'),
	 ('111','Forms Analyst','Profess. & Kin.'),
	 ('331','Fourdrinier Machine  Operator','Paper & Pulp'),
	 ('470','Frame Repairer','Furniture'),
	 ('370','Frame Straightener','Motor-Bicycles'),
	 ('230','Freezer Operator','Dairy Products'),
	 ('360','Fruit Buying Inspector','Can. & Preserv.'),
	 ('331','Fruit Grader Operator','Agriculture'),
	 ('491','Fruit Picker','Agriculture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('332','Fuel Attendant, Plant','Any Industry'),
	 ('480','Fumigator','Business Ser.'),
	 ('212','Fund Raiser','Nonprofit Org.'),
	 ('340','Funeral Attendant','Personal Ser.'),
	 ('560','Funeral Car Chauffeur','Personal Ser.'),
	 ('212','Funeral Director','Personal Ser.'),
	 ('341','Furnace Cleaner','Any Industry'),
	 ('380','Furnace Installer And  Repairer, Hot Air','Any Industry; Utilities'),
	 ('321','Furniture Assembler','Furniture'),
	 ('470','Furniture Assembler/Heavy','Woodworking');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Furniture Crater','Any Industry'),
	 ('221','Furniture Finisher','Woodworking'),
	 ('560','Furniture Mover','Motor Trans.'),
	 ('321','Furniture Upholsterer','Any Industry'),
	 ('221','Furrier','Fur Goods'),
	 ('370','Garage Servicer,  Transportation Equipment','Any Industry'),
	 ('560','Garbage Collector, Manual','Motor Trans.'),
	 ('491','Gardener','Domestic Ser.'),
	 ('221','Garment Cutter, Hand','Any Industry'),
	 ('321','Garment Cutter, Machine','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('332','Gas Compressor Operator','Any Industry'),
	 ('332','Gas Engine Operator','Any Industry'),
	 ('320','Gas Meter Adjuster','Utilities'),
	 ('212','Gate Agent','Air Trans.'),
	 ('213','Geologist','Profess. & Kin.'),
	 ('221','Gift Wrapper','Retail Trade'),
	 ('221','Gilder, Metal Leaf','Any Industry'),
	 ('230','Ginner','Agriculture'),
	 ('420','Glass Cutter','Any Industry'),
	 ('221','Glass Finisher','Glass Products');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Glass Installer','Automotive Ser.'),
	 ('370','Glass Installer','Woodworking'),
	 ('321','Glass Polisher','Glass Mfg.'),
	 ('380','Glazier','Construction'),
	 ('330','Gluer','Woodworking'),
	 ('251','Golf Course Ranger','Amuse. & Rec.'),
	 ('340','Golf Range Attendant','Amuse. & Rec.'),
	 ('360','Grainer, Machine','Any Industry'),
	 ('110','Grant Coordinator','Profess. & Kin.'),
	 ('230','Granulator Operator','Sugar & Conf.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Graphic Designer','Profess. & Kin.'),
	 ('480','Grave Digger','Real Estate'),
	 ('340','Greaser','Any Industry'),
	 ('460','Green Chain Offbearer','Millwork-Plywood'),
	 ('331','Grinder Operator','Grain-Feed Mills'),
	 ('320','Grinder Operator, Precision','Machine Shop'),
	 ('330','Grinder Set-Up Operator,  Centerless','Machine Shop'),
	 ('330','Grinder, Bench','Any Industry'),
	 ('321','Grinder, Disk, Belt Or Wheel','Any Industry'),
	 ('330','Grinder, Tool','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Grinder-Chipper, Rough','Any Industry'),
	 ('330','Grinding Machine Tender','Machine Shop'),
	 ('482','Grip','Amuse. & Rec.'),
	 ('482','Grip, Property Handler','Motion Picture'),
	 ('482','Grip, Stage Construction','Motion Picture'),
	 ('214','Grocery Checker','Retail Trade'),
	 ('230','Grommet Machine Operator','Any Industry'),
	 ('491','Groom','Any Industry'),
	 ('491','Groundskeeper','Any Industry'),
	 ('490','Group Supervisor','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('490','Guard, Correctional Facility','Government Ser.'),
	 ('240','Guard, School-Crossing','Government Ser.'),
	 ('590','Guide, Alpine','Personal Ser.'),
	 ('213','Guide, Establishment','Any Industry'),
	 ('491','Guide, Hunting And Fishing','Amuse. & Rec.'),
	 ('220','Gunsmith','Any Industry'),
	 ('290','Hair Stylist','Personal Ser.'),
	 ('380','Handyperson','Any Industry'),
	 ('110','Harbor Master','Government Ser.'),
	 ('380','Hardwood Floor Layer','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Harness Maker','Leather Prod.'),
	 ('230','Hat And Cap Sewer','Hat & Cap'),
	 ('110','Hazardous Waste  Management Specialist','Government Ser.'),
	 ('110','Hearing Officer','Government Ser.'),
	 ('112','Hearing Reporter','Clerical'),
	 ('330','Heat Treater','Heat Treating'),
	 ('430','Heater','Forging'),
	 ('380','Heating And Air Conditioning  Installer-Servicer','Construction'),
	 ('230','Hemmer, Automatic','Tex. Prod., Nec.'),
	 ('420','Hide Puller','Meat Products');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Hod Carrier','Construction'),
	 ('351','Hoisting Engineer','Any Industry'),
	 ('111','Holter Scanning Technician','Medical Ser.'),
	 ('340','Home Attendant','Personal Ser.'),
	 ('491','Horseshoer','Agriculture'),
	 ('213','Horticulturist','Profess. & Kin.'),
	 ('111','Hospital Admitting Clerk','Medical Ser.'),
	 ('240','Host/Hostess','Any Industry'),
	 ('211','Hotel Clerk','Hotel & Rest.'),
	 ('470','Household Appliance  Installer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('340','Housekeeper, Domestic','Domestic Ser.; Hotel & Rest.'),
	 ('332','Hydroelectric Station  Operator','Utilities'),
	 ('331','Ice Cream Maker','Dairy Products'),
	 ('460','Ice Cutter','Food Prep., Nec'),
	 ('120','Illustrator','Profess. & Kin.'),
	 ('110','Import-Export Agent','Any Industry'),
	 ('111','Industrial Engineer','Profess. & Kin.'),
	 ('213','Industrial Hygienist','Profess. & Kin.'),
	 ('111','Information And Referral  Aide','Government Ser.'),
	 ('111','Information Clerk','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Injection Molding Machine  Tender','Plastic Prod.'),
	 ('230','Injection Wax Molder','Foundry; Jewelrysilver.'),
	 ('330','Inker','Print. & Pub.'),
	 ('120','Inspector','Jewelry-Silver.'),
	 ('221','Inspector','Plastic Prod.'),
	 ('221','Inspector','Pharmaceut.'),
	 ('213','Inspector, Agricultural  Commodities','Government Ser.'),
	 ('213','Inspector, Air Carrier','Government Ser.'),
	 ('213','Inspector, Airplane','Air Trans.'),
	 ('221','Inspector, Canned Food  Reconditioning','Can. & Preserv.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Inspector, Eddy Current','Steel & Rel.'),
	 ('221','Inspector, Electronics','Comm. Equip.'),
	 ('221','Inspector, Fabric','Any Industry'),
	 ('251','Inspector, Food And Drug','Government Ser.'),
	 ('321','Inspector, Furniture','Furniture'),
	 ('221','Inspector, Garment','Any Industry'),
	 ('221','Inspector, Glass','Any Industry'),
	 ('251','Inspector, Health Care  Facilities','Government Ser.'),
	 ('120','Inspector, Jewel','Clock & Watch'),
	 ('213','Inspector, Metal Fabricating','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Inspector, Metal Finish','Any Industry'),
	 ('221','Inspector, Printed Circuit  Boards','Electron. Comp.'),
	 ('251','Inspector, Quality Assurance','Government Ser.'),
	 ('251','Inspector, Transportation','Motor Trans.'),
	 ('213','Inspector, Weigh Station','Government Ser.'),
	 ('493','Instructor, Aerobics','Amuse. & Rec.'),
	 ('251','Instructor, Driving','Education'),
	 ('390','Instructor, Physical  Education','Education'),
	 ('390','Instructor, Sports','Amuse. & Rec.'),
	 ('214','Instructor, Vocational  Training','Education');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('220','Instrument Maker And  Repairer','Any Industry'),
	 ('320','Instrument Repairer','Any Industry'),
	 ('380','Insulation Worker','Construction'),
	 ('221','Integrated Circuit  Fabricator','Electron. Comp.'),
	 ('120','Integrated Circuit Layout  Designer','Profess. & Kin.'),
	 ('214','Interior Designer','Profess. & Kin.'),
	 ('220','Internist','Medical Ser.'),
	 ('210','Interpreter','Profess. & Kin.'),
	 ('212','Interpreter, Deaf','Profess. & Kin.'),
	 ('111','Interviewer, Employment','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Interviewer/Survey Worker','Clerical'),
	 ('360','Inventory Clerk','Clerical'),
	 ('251','Investigator','Government Ser.'),
	 ('111','Investigator, Credit Fraud','Retail Trade'),
	 ('251','Investigator, Inside/Outside','Business Ser.'),
	 ('490','Investigator, Vice','Government Ser.'),
	 ('110','Investment Analyst','Financial'),
	 ('111','Invoice Control Clerk','Clerical'),
	 ('491','Irrigator, Gravity Flow','Agriculture'),
	 ('491','Irrigator, Sprinkling System','Agriculture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Jackhammer Operator','Mine & Quarry'),
	 ('490','Jailer','Government Ser.'),
	 ('340','Janitor','Any Industry'),
	 ('120','Jeweler','Jewelry-Silver.'),
	 ('320','Jig Maker','Machine Shop'),
	 ('330','Jig-Boring Machine Operator,  Numerical Control','Machine Shop'),
	 ('330','Jigsaw Operator','Woodworking'),
	 ('212','Job Analyst','Profess. & Kin.'),
	 ('110','Job Development Specialist','Profess. & Kin.'),
	 ('320','Job Setter, Honing','Machine Shop');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('590','Jockey','Amuse. & Rec.'),
	 ('380','Joiner','Ship-Boat Mfg.'),
	 ('330','Jointer Operator','Woodworking'),
	 ('110','Judge','Government Ser.'),
	 ('221','Key Cutter','Any Industry'),
	 ('230','Kick Press Operator','Any Industry'),
	 ('230','Kiln Operator','Woodworking'),
	 ('360','Kiln Worker','Pottery & Porc.'),
	 ('322','Kitchen Helper','Hotel & Rest.'),
	 ('230','Knitting Machine Operator','Knitting');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Knitting Machine Operator','Knitting'),
	 ('492','Knot Bumper','Logging'),
	 ('212','Laboratory Assistant, Blood And Plasma','Medical Ser.'),
	 ('340','Laboratory Equipment  Cleaner','Any Industry'),
	 ('220','Laboratory Tester','Any Industry'),
	 ('460','Laborer','Meat Products'),
	 ('460','Laborer','Pharmaceut.'),
	 ('460','Laborer, Chemical Processing','Chemical'),
	 ('480','Laborer, Concrete Mixing  Plant','Construction'),
	 ('480','Laborer, Concrete Paving','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Laborer, Construction','Construction'),
	 ('491','Laborer, Farm','Agriculture'),
	 ('360','Laborer, General','Plastic Prod.'),
	 ('460','Laborer, General','Machine Shop'),
	 ('460','Laborer, General','Nonfer. Metal'),
	 ('460','Laborer, General','Steel & Rel.'),
	 ('460','Laborer, Mill','Woodworking'),
	 ('460','Laborer, Petroleum Refinery','Petrol. Refin.'),
	 ('480','Laborer, Road','Construction'),
	 ('460','Laborer, Shipyard','Ship-Boat Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Laborer, Wrecking &  Salvaging','Construction'),
	 ('460','Laborer, Yard','Paper & Pulp'),
	 ('331','Lacquerer','Plastic Prod.'),
	 ('330','Laminating Machine Feeder','Wood Prod., Nec.'),
	 ('330','Laminating Machine Operator','Furniture'),
	 ('430','Laminating Press Operator','Plastic Prod.'),
	 ('330','Laminator','Ship-Boat Mfg.;Vehicles Nec.'),
	 ('213','Land Surveyor','Profess. & Kin.'),
	 ('491','Landscape Gardener','Agriculture'),
	 ('230','Laser Beam Machine Operator','Welding');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Laser Beam Trim Operator','Electron. Comp.'),
	 ('370','Laser Technician/Repairer','Electron. Comp.'),
	 ('330','Lathe Operator, Numerical  Control','Machine Shop'),
	 ('330','Lathe Operator, Swing-Type','Woodworking'),
	 ('330','Lathe Operator, Woodturning','Woodworking'),
	 ('460','Lathe Spotter','Millwork-Plywood'),
	 ('330','Lathe Tender','Machine Shop'),
	 ('380','Lather, Metal Or Wood','Construction'),
	 ('340','Launderer, Hand','Laundry & Rel.'),
	 ('491','Lawn Service Worker','Agriculture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('110','Lawyer','Profess. & Kin.'),
	 ('320','Lay-Out Maker','Sheet Metal; Any Industry'),
	 ('120','Lay-Out Technician','Optical Goods'),
	 ('491','Lead Pony Rider, Racetrack','Amuse. & Rec.'),
	 ('221','Leather Cutter','Leather Prod.'),
	 ('230','Leather Garment Presser','Laundry & Rel.'),
	 ('320','Leather Worker','Leather Prod.'),
	 ('110','Legislative Assistant','Government Ser.'),
	 ('220','Lens Examiner','Optical Goods'),
	 ('220','Lens Fabricating Machine  Tender','Optical Goods');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Lens Hardener','Optical Goods'),
	 ('320','Lens Mounter, Optical','Optical Goods'),
	 ('220','Lens Polisher, Hand','Optical Goods'),
	 ('214','Librarian','Library'),
	 ('212','Librarian, Catalog','Library'),
	 ('214','Library Assistant','Library'),
	 ('211','License Clerk','Government Ser.'),
	 ('590','Lifeguard','Amuse. & Rec.'),
	 ('341','Light Fixture Servicer','Any Industry'),
	 ('250','Light Rail Car Operator','R.R. Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('482','Line Installer-Repairer','Tel. & Tel.; Utilities'),
	 ('341','Line Service Attendant','Air Trans.'),
	 ('213','Line Walker','Petrol. & Gas'),
	 ('360','Linen Room Clerk','Hotel & Rest.'),
	 ('110','Literary Agent','Business Ser.'),
	 ('491','Livestock Yard Attendant','Any Industry'),
	 ('110','Loan Officer','Financial'),
	 ('212','Location Manager','Motion Picture'),
	 ('120','Lock Assembler','Cutlery-Hrdwr.'),
	 ('221','Locksmith','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('250','Locomotive Engineer','R.R. Trans.'),
	 ('213','Log Scaler','Logging'),
	 ('491','Log Sorter','Logging'),
	 ('492','Logger, All-Round','Logging'),
	 ('351','Logging Tractor Operator','Forestry'),
	 ('370','Loom Fixer','Narrow Fabrics'),
	 ('340','Lubrication Servicer','Automotive Ser.'),
	 ('320','Luggage Repairer','Any Industry'),
	 ('221','Lumber Grader','Woodworking'),
	 ('460','Lumber Handler/Stacker','Woodworking');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Lumber Sorter','Woodworking'),
	 ('350','Lunch Truck Driver','Hotel & Rest.'),
	 ('370','Machine Assembler/Builder','Machinery Mfg.'),
	 ('360','Machine Feeder','Any Industry'),
	 ('460','Machine Feeder, Raw Stock','Tex. Prod., Nec.'),
	 ('330','Machine Molder','Foundry'),
	 ('230','Machine Operator, Roofing  Materials','Build. Mat., Nec'),
	 ('320','Machine Set-Up Operator','Machine Shop'),
	 ('221','Machine Tester','Office Machines'),
	 ('320','Machinist','Machine Shop');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Machinist, Automotive','Automotive Ser.'),
	 ('370','Machinist, Bench','Machinery Mfg.'),
	 ('112','Magnetic Tape Composer  Operator','Print. & Pub.'),
	 ('211','Mail Clerk','Clerical'),
	 ('230','Mailing Machine Operator','Print. & Pub.'),
	 ('370','Maintenance Machinist','Machine Shop'),
	 ('470','Maintenance Mechanic','Any Industry'),
	 ('380','Maintenance Repairer,  Building','Any Industry'),
	 ('470','Maintenance Repairer, Indus.  Machines & Plants','Any Industry'),
	 ('480','Maintenance Worker,  Municipal','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('311','Make-Up Artist, Body','Amuse. & Rec.'),
	 ('110','Management Analyst','Profess. & Kin.'),
	 ('212','Management Trainee','Any Industry'),
	 ('212','Manager, Advertising Agency','Business Ser.'),
	 ('212','Manager, Apartment House','Real Estate'),
	 ('213','Manager, Automobile Service  Station','Retail Trade'),
	 ('110','Manager, Benefits','Profess. & Kin.'),
	 ('110','Manager, Bus Transportation','Motor Trans.'),
	 ('212','Manager, Convention','Hotel & Rest.'),
	 ('212','Manager, Customer Services','Business Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('213','Manager, Dairy Farm','Agriculture'),
	 ('110','Manager, Data Processing','Profess. & Kin.'),
	 ('110','Manager, Department','Any Industry'),
	 ('212','Manager, Fast Food Services','Retail Trade'),
	 ('110','Manager, Hotel Or Motel','Hotel & Rest.'),
	 ('212','Manager, Hotel Recreational  Facilities','Amuse. & Rec.'),
	 ('212','Manager, Labor Relations','Profess. & Kin.'),
	 ('212','Manager, Mobile Home Park','Real Estate'),
	 ('213','Manager, Nursery','Agriculture'),
	 ('111','Manager, Office','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Manager, Parts','Retail Trade'),
	 ('111','Manager, Personnel','Profess. & Kin.'),
	 ('213','Manager, Property','Real Estate'),
	 ('212','Manager, Quality Control','Profess. & Kin.'),
	 ('212','Manager, Retail Store','Retail Trade'),
	 ('212','Manager, Stage','Amuse. & Rec.'),
	 ('212','Manager, Theater','Amuse. & Rec.'),
	 ('110','Manager, Traffic','Air Trans.; Any Industry'),
	 ('212','Manager, Vehicle Leasing And  Rental','Automotive Ser.'),
	 ('212','Manager, Warehouse','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Manicurist','Personal Ser.'),
	 ('330','Marble Polisher, Machine','Stonework'),
	 ('481','Marble Setter','Construction'),
	 ('480','Marble Setter Helper','Construction'),
	 ('211','Marker','Retail Trade'),
	 ('111','Market Research Analyst','Profess. & Kin.'),
	 ('221','Masker, Parts','Any Industry'),
	 ('311','Masseur/Masseuse','Personal Ser.'),
	 ('212','Master Control Operator','Radio-Tv Broad.'),
	 ('221','Mat Cutter, Picture Frames','Wood Prod., Nec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Material Expediter','Clerical'),
	 ('460','Material Stacker','Any Industry'),
	 ('321','Mattress Maker','Furniture'),
	 ('322','Meat Carver, Display','Hotel & Rest.'),
	 ('322','Meat Clerk','Retail Trade'),
	 ('322','Meat Cutter','Retail Trade'),
	 ('331','Meat Grinder','Meat Products'),
	 ('380','Mechanic, Aircraft','Aircraft Mfg.'),
	 ('370','Mechanic, Automobile','Automotive Ser.'),
	 ('470','Mechanic, Diesel','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Mechanic, Front-End','Automotive Ser.'),
	 ('481','Mechanic, Powerhouse','Utilities'),
	 ('380','Mechanic, Radar','Any Industry'),
	 ('370','Mechanic, Radiator','Automotive Ser.'),
	 ('481','Mechanic, Refrigeration','Svc. Ind. Mach.'),
	 ('370','Mechanic, Rocket Engine  Component','Aircraft Mfg.'),
	 ('470','Mechanic, Safe And Vault','Business Ser.'),
	 ('370','Mechanic, Small Engine','Any Industry'),
	 ('370','Mechanic, Tractor','Automotive Ser.'),
	 ('370','Mechanic, Transmission','Automotive Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Mechanic, Tune-Up','Automotive Ser.'),
	 ('214','Media Specialist, School  Library','Library'),
	 ('212','Medical Assistant, Office','Medical Ser.'),
	 ('470','Medical Equipment Repairer','Protective Dev.'),
	 ('212','Medical Laboratory  Technician','Medical Ser.'),
	 ('220','Medical Laboratory  Technologist','Medical Ser.'),
	 ('211','Medical Record Clerk','Medical Ser.'),
	 ('321','Melter','Jewelry-Silver.'),
	 ('340','Mental Retardation Aide,  Institution','Medical Ser.'),
	 ('213','Messenger, Non-Driving','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('331','Metal Cleaner, Immersion','Any Industry'),
	 ('430','Metal Fabricator','Any Industry'),
	 ('321','Metal Grinder And Finisher','Any Industry'),
	 ('321','Metal Sprayer, Production','Any Industry'),
	 ('230','Metallization Equipment  Tender, Semiconductors','Comm. Equip.'),
	 ('212','Metallurgical Tester','Profess. & Kin.'),
	 ('213','Meter Reader','Utilities'),
	 ('320','Meter Repairer','Any Industry'),
	 ('220','Microelectronics Technician','Electron. Comp.'),
	 ('230','Microfilm Processor','Business Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Microphone Boom Operator','Motion Picture'),
	 ('491','Milker, Machine','Agriculture'),
	 ('331','Mill Operator','Any Industry'),
	 ('320','Milling Machine Operator,  Numerical Control','Machine Shop'),
	 ('481','Millwright','Any Industry'),
	 ('480','Millwright Helper','Any Industry'),
	 ('213','Mine Inspector','Mine & Quarry'),
	 ('560','Miner','Mine & Quarry'),
	 ('560','Miner Helper','Mine & Quarry'),
	 ('221','Miniature Set Constructor','Motion Picture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Mixer','Paint & Varnish'),
	 ('460','Mixer, Clay','Brick & Tile'),
	 ('480','Mixer, Concrete','Construction'),
	 ('460','Mixer, Dough','Bakery Products'),
	 ('460','Mixer, Flour','Bakery Products'),
	 ('480','Mixer, Mortar','Construction'),
	 ('221','Mixer, Paint (Hand)','Any Industry'),
	 ('460','Mixer, Paint (Machine)','Any Industry'),
	 ('331','Mixer, Sand (Machine)','Foundry'),
	 ('331','Mixing Machine Operator','Food Prep., Nec');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Mixing Machine Operator','Any Industry'),
	 ('380','Mobile Home Assembler','Mfd. Bldgs.'),
	 ('212','Mobile Home Park Manager','Real Estate'),
	 ('240','Model','Garment'),
	 ('221','Model Maker','Any Industry'),
	 ('240','Model, Artists','Any Industry'),
	 ('213','Model, Photographers','Any Industry'),
	 ('221','Mold And Model Maker,  Plaster','Concrete Prod.'),
	 ('321','Mold Repairer','Any Industry'),
	 ('330','Molder','Aircraft Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('420','Molder, Hand','Brick & Tile'),
	 ('320','Molder, Pattern','Foundry'),
	 ('230','Molding Machine Tender,  Compression','Plastic Prod.'),
	 ('340','Morgue Attendant','Medical Ser.'),
	 ('230','Motion Picture Projectionist','Amuse. & Rec.'),
	 ('351','Motorboat Operator','Any Industry'),
	 ('370','Motorcycle Assembler','Motor-Bicycles'),
	 ('250','Motorcycle Driver, Delivery','Retail Trade'),
	 ('490','Motorcycle Police Officer','Government Ser.'),
	 ('370','Motorcycle Repairer','Automotive Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('351','Motor-Grader Operator','Construction'),
	 ('120','Mounter, Hand','Photofinishing'),
	 ('310','Mri Technologist','Medical Ser.'),
	 ('370','Muffler Installer','Automotive Ser.'),
	 ('460','Munitions Handler','Ordnance'),
	 ('212','Museum Attendant & Guide','Museums'),
	 ('380','Museum Preparator','Museums'),
	 ('220','Musician, Instrumental','Amuse. & Rec.'),
	 ('330','Nailing Machine Operator','Any Industry'),
	 ('111','Navigator','Air Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','News Gathering Technician','Radio-Tv Broad.'),
	 ('330','Nibbler Operator','Any Industry'),
	 ('111','Night Auditor','Hotel & Rest.'),
	 ('460','Nitroglycerin Distributor','Chemical'),
	 ('310','Nuclear Medicine  Technologist','Medical Ser.'),
	 ('330','Numerical Control Machine  Operator','Machine Shop'),
	 ('340','Nurse Aide','Medical Ser.'),
	 ('220','Nurse Anesthetist','Medical Ser.'),
	 ('311','Nurse, General Duty','Medical Ser.'),
	 ('311','Nurse, Licensed Vocational','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('311','Nurse, Private Duty','Medical Ser.'),
	 ('212','Nurse, School','Medical Ser.'),
	 ('311','Nurse-Midwife','Medical Ser.'),
	 ('460','Nut Roaster','Can. & Preserv.'),
	 ('212','Occupational Analyst','Profess. & Kin.'),
	 ('213','Occupational Safety And  Health Inspector','Government Ser.'),
	 ('311','Occupational Therapist','Medical Ser.'),
	 ('340','Occupational Therapy Aide','Medical Ser.'),
	 ('211','Office Clerk, General','Clerical'),
	 ('320','Office Machine Servicer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Offset Duplicating Machine  Operator','Clerical'),
	 ('330','Offset Press Helper','Print. & Pub.'),
	 ('230','Offset Press Operator','Print. & Pub.'),
	 ('480','Oil Well Driller','Petrol. & Gas'),
	 ('340','Oiler','Any Industry'),
	 ('332','Operating Engineer','Any Industry'),
	 ('332','Operating Engineer,  Refrigeration','Any Industry'),
	 ('111','Optical Engineer','Profess. & Kin.'),
	 ('220','Optician, Dispensing','Optical Goods'),
	 ('220','Optician, Lens Grinder','Optical Goods');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('220','Optometrist','Medical Ser.'),
	 ('491','Orchard Sprayer, Hand','Agriculture'),
	 ('360','Order Checker','Clerical'),
	 ('111','Order Clerk','Clerical'),
	 ('214','Order Clerk','Clerical'),
	 ('214','Order Filler, Catalog Sales','Retail Trade'),
	 ('460','Orderly','Medical Ser.'),
	 ('481','Ornamental Iron Worker','Construction'),
	 ('120','Orthodontic Technician','Protective Dev.'),
	 ('320','Orthotics Technician','Protective Dev.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('310','Orthotist','Medical Ser.'),
	 ('331','Oven Tender','Bakery Products'),
	 ('351','Overhead Crane Operator','Any Industry'),
	 ('331','Oxidized Finish Plater','Any Industry'),
	 ('221','Oxidizer','Jewelry-Silver.'),
	 ('330','Package Sealer, Machine','Any Industry'),
	 ('330','Packager, Machine','Any Industry'),
	 ('360','Packer, Agricultural  Produce','Agriculture'),
	 ('360','Packer, Hand','Any Industry'),
	 ('380','Painter','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Painter Helper','Construction'),
	 ('221','Painter, Airbrush','Any Industry'),
	 ('482','Painter, Bridge, Structural  Steel','Construction'),
	 ('321','Painter, Brush','Any Industry'),
	 ('120','Painter, Hand, Decorative','Any Industry'),
	 ('380','Painter, Sign','Any Industry'),
	 ('321','Painter, Spray Gun','Any Industry'),
	 ('321','Painter, Touch-Up','Any Industry'),
	 ('380','Painter, Transportation  Equipment','Aircraft Mfg.'),
	 ('230','Palletizer Operator,  Automatic','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Paper Cutter, Machine','Beverage'),
	 ('460','Paper-Baling Machine Tender','Any Industry'),
	 ('460','Papercutting Machine  Operator','Print. & Pub.'),
	 ('380','Paperhanger','Construction'),
	 ('331','Paper-Making Machine  Operator','Paper & Pulp'),
	 ('321','Parachute Rigger','Air Trans.'),
	 ('211','Paralegal','Profess. & Kin.'),
	 ('490','Paramedic','Medical Ser.'),
	 ('211','Parimutuel Ticket Seller','Amuse. & Rec.'),
	 ('490','Park Ranger','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('250','Parking Enforcement Officer','Government Ser.'),
	 ('214','Parking Lot Attendant','Automotive Ser.'),
	 ('240','Parking Lot Attendant, Booth','Automotive Ser.'),
	 ('490','Parole Officer','Profess. & Kin.'),
	 ('214','Parts Clerk','Clerical'),
	 ('214','Parts Order And Stock Clerk','Clerical'),
	 ('460','Pasteurizer','Dairy Products'),
	 ('320','Patternmaker, All-Around','Foundry'),
	 ('320','Patternmaker, Metal','Foundry'),
	 ('320','Patternmaker, Wood','Foundry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Pattern-Punching Machine  Operator','Tex. Prod., Nec.'),
	 ('221','Peeler, Hand','Can. & Preserv.'),
	 ('230','Peeler, Machine','Can. & Preserv.'),
	 ('320','Percussion Instrument  Repairer','Any Industry'),
	 ('310','Perfusionist','Medical Ser.'),
	 ('390','Personal Trainer','Amuse. & Rec.'),
	 ('111','Personnel Records Clerk','Clerical'),
	 ('111','Personnel Recruiter','Profess. & Kin.'),
	 ('220','Pharmacist','Medical Ser.'),
	 ('220','Phlebotomist','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('211','Photocopying Machine  Operator','Clerical'),
	 ('221','Photoengraver','Print. & Pub.'),
	 ('221','Photofinishing Laboratory  Worker','Photofinishing'),
	 ('213','Photographer','Amuse. & Rec.'),
	 ('212','Photographer, Still','Profess. & Kin.'),
	 ('221','Photographic Plate Maker','Electron. Comp.'),
	 ('213','Photojournalist','Print. & Pub.'),
	 ('230','Phototypesetter Operator','Print. & Pub.'),
	 ('310','Physiatrist','Medical Ser.'),
	 ('311','Physical Therapist','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('340','Physical Therapy Aide','Medical Ser.'),
	 ('212','Physician Assistant','Medical Ser.'),
	 ('220','Physician, General  Practitioner','Medical Ser.'),
	 ('320','Piano Technician','Any Industry'),
	 ('221','Piano Tuner','Any Industry'),
	 ('491','Picker, Fruit','Agriculture'),
	 ('330','Picking Machine Operator','Any Industry'),
	 ('221','Picture Framer','Retail Trade'),
	 ('351','Pile-Driver Operator','Construction'),
	 ('370','Pinsetter Adjuster,  Automatic','Toy-Sport Equip.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Pinsetter Mechanic,  Automatic','Any Industry'),
	 ('380','Pipe Coverer And Insulator','Ship-Boat Mfg.'),
	 ('481','Pipe Fitter','Construction'),
	 ('481','Pipe Fitter Helper','Construction'),
	 ('480','Pipe Layer','Construction'),
	 ('480','Pipe Layer Helper','Construction'),
	 ('380','Pipe Organ Tuner And  Repairer','Any Industry'),
	 ('480','Pipeliner','Pipe Lines'),
	 ('330','Planer Operator','Woodworking'),
	 ('430','Planer Operator, Metal  Castings','Machine Shop');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Plant Engineer','Profess. & Kin.'),
	 ('420','Plaster Die Maker','Pottery & Porc.'),
	 ('321','Plaster Maker','Nonmet. Min.'),
	 ('320','Plaster Molder','Foundry'),
	 ('380','Plasterer','Construction'),
	 ('480','Plasterer Helper','Construction'),
	 ('230','Platen Press Feeder','Print. & Pub.'),
	 ('230','Platen Press Operator','Print. & Pub.'),
	 ('330','Plater','Electroplating'),
	 ('460','Plater, Electroless, Printed  Circuit Boards','Electron. Comp.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Plater, Hot Dip','Galvanizing'),
	 ('460','Plater, Printed Circuit Board  Panels','Electron. Comp.'),
	 ('221','Plater, Semiconductor  Wafers & Components','Electron. Comp.'),
	 ('230','Pleating Machine Operator','Any Industry'),
	 ('481','Plumber','Construction'),
	 ('481','Plumber Apprentice','Construction'),
	 ('481','Plumber Helper','Construction'),
	 ('370','Pneumatic Tool Repairer','Any Industry'),
	 ('380','Pneumatic Tube Repairer','Any Industry'),
	 ('220','Podiatrist','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('251','Police Artist','Government Ser.'),
	 ('490','Police Captain','Government Ser.'),
	 ('111','Police Clerk','Government Ser.'),
	 ('490','Police Officer','Government Ser.'),
	 ('490','Police Officer, State Highway','Government Ser.'),
	 ('120','Polisher, Eyeglass Frames','Optical Goods'),
	 ('321','Polisher/Buffer','Any Industry'),
	 ('330','Polishing Machine Operator','Any Industry'),
	 ('212','Polygraph Examiner','Profess. & Kin.'),
	 ('360','Porter','Air Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Porter, Baggage','Hotel & Rest.'),
	 ('330','Pottery Machine Operator','Pottery & Porc.'),
	 ('322','Poultry Dresser','Agriculture'),
	 ('230','Power Barker Operator','Paper & Pulp'),
	 ('430','Power Brake Operator','Any Industry'),
	 ('332','Power Plant Operator','Utilities'),
	 ('330','Power Press Tender','Any Industry'),
	 ('332','Power Reactor Operator','Utilities'),
	 ('351','Power Shovel Operator','Any Industry'),
	 ('481','Powerhouse Mechanic','Utilities');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('370','Precision Assembler &  Repairer','Aircraft Mfg.'),
	 ('320','Precision Assembler, Bench','Aircraft Mfg.'),
	 ('110','President','Any Industry'),
	 ('230','Press Operator','Laundry & Rel.'),
	 ('330','Press Operator, Cylinder','Print. & Pub.'),
	 ('430','Press Operator, Heavy Duty','Any Industry'),
	 ('331','Press Operator, Meat','Meat Products'),
	 ('230','Press Operator, Offset','Print. & Pub.'),
	 ('330','Press Operator, Rotogravure','Print. & Pub.'),
	 ('321','Presser, All-Around','Laundry & Rel.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('221','Presser, Hand','Any Industry'),
	 ('321','Presser, Machine','Any Industry'),
	 ('230','Print Developer, Automatic','Photofinishing'),
	 ('221','Printed Circuit Board  Assembler, Hand','Comm. Equip.'),
	 ('120','Printed Circuit Designer','Profess. & Kin.'),
	 ('320','Printer, Job','Print. & Pub.'),
	 ('390','Probation Officer','Profess. & Kin.'),
	 ('251','Process Server','Business Ser.'),
	 ('212','Producer','Radio-Tv Broad.'),
	 ('212','Prompter','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('211','Proofreader','Print. & Pub.'),
	 ('111','Proofreader, Production','Print. & Pub.'),
	 ('380','Prop Maker','Amuse. & Rec.'),
	 ('320','Prosthetics Technician','Protective Dev.'),
	 ('310','Prosthetist','Medical Ser.'),
	 ('311','Psychiatric Technician','Medical Ser.'),
	 ('340','Psychiatric Ward Attendant','Medical Ser.'),
	 ('110','Psychologist, Clinical','Profess. & Kin.'),
	 ('110','Psychologist, Counseling','Profess. & Kin.'),
	 ('380','Public Address Setter-Up &  Servicer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('110','Public Health Service Officer','Government Ser.'),
	 ('111','Public Relations  Representative','Profess. & Kin.'),
	 ('212','Pulmonary Function  Technician','Medical Ser.'),
	 ('470','Pump Installer','Any Industry'),
	 ('330','Pump Machine Operator','Any Industry'),
	 ('370','Pump Servicer','Any Industry'),
	 ('332','Pump Station Operator,  Waterworks','Waterworks'),
	 ('330','Punch Press Operator','Any Industry'),
	 ('430','Punch Press Operator,  Automatic','Any Industry'),
	 ('251','Purchasing Agent','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Purser','Water Trans.'),
	 ('321','Putty Glazer, Pottery','Any Industry'),
	 ('221','Quality Assurance Monitor','Auto. Mfg.'),
	 ('212','Quality Control Technician','Profess. & Kin.'),
	 ('480','Quarry Worker','Mine & Quarry'),
	 ('120','Quick Sketch Artist','Amuse. & Rec.'),
	 ('221','Racket Stringer','Toy-Sport Equip.'),
	 ('330','Radial Arm Saw Operator','Woodworking'),
	 ('320','Radial Drill Press Setup','Machine Shop'),
	 ('310','Radiation Therapy  Technologist','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Radiographer, Industrial','Any Industry'),
	 ('310','Radiologic Technologist','Medical Ser.'),
	 ('380','Radiological Equipment  Specialist','Inst. & App.'),
	 ('212','Radiotelephone Operator','Any Industry'),
	 ('481','Railroad Car Builder','Railroad Equip.'),
	 ('481','Railway Car Repairer','Railroad Equip.'),
	 ('460','Ramp Attendant','Air Trans.'),
	 ('111','Rater','Insurance'),
	 ('251','Real Estate Agent','Profess. & Kin.'),
	 ('321','Reamer, Hand','Machine Shop');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Reaming Machine Tender','Nonfer. Metal'),
	 ('111','Receptionist','Clerical'),
	 ('212','Recording Engineer','Radio-Tv Broad.'),
	 ('360','Recording Studio Set-Up  Worker','Recording'),
	 ('230','Recordist','Motion Picture'),
	 ('214','Recreation Aide','Social Ser.'),
	 ('310','Recreational Therapist','Medical Ser.'),
	 ('111','Recruiter, Personnel','Profess. & Kin.'),
	 ('111','Registration Clerk','Government Ser.'),
	 ('212','Rehabilitation Center Manager','Government Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('481','Reinforcing Iron Worker','Construction'),
	 ('221','Repairer','Furniture'),
	 ('220','Repairer, Art Objects','Any Industry'),
	 ('320','Repairer, Office Machines','Any Industry'),
	 ('320','Repairer, Salvaged Parts','Any Industry'),
	 ('320','Repairer, Small Appliance','House. Appl.'),
	 ('320','Repairer, Wind Instrument','Any Industry'),
	 ('220','Repairer/Adjuster','Office Machines'),
	 ('251','Reporter','Print. & Pub.'),
	 ('110','Reports Analyst','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('213','Repossessor','Clerical'),
	 ('460','Resaw Operator','Woodworking'),
	 ('111','Researcher','Profess. & Kin.'),
	 ('111','Reservation Clerk','Clerical'),
	 ('111','Reservations Agent','Air Trans.'),
	 ('311','Respiratory Therapist','Medical Ser.'),
	 ('340','Respiratory Therapy Aide','Medical Ser.'),
	 ('240','Rest Room Attendant','Any Industry'),
	 ('380','Restoration Technician','Museums'),
	 ('214','Retail Clerk','Retail Trade');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Reviewer, Final Application','Insurance'),
	 ('330','Rewinder Operator','Paper Goods'),
	 ('230','Rice Grader','Grain-Feed Mills'),
	 ('240','Ride Operator','Amuse. & Rec.'),
	 ('482','Rigger','Ship-Boat Mfg.'),
	 ('482','Rigger, High','Amuse. & Rec.'),
	 ('481','Rigger/Slinger','Any Industry'),
	 ('330','Ripsaw Operator','Woodworking'),
	 ('230','Rivet And Bolt Maker','Any Industry'),
	 ('330','Riveter, Hydraulic','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('481','Riveter, Pneumatic','Any Industry'),
	 ('330','Riveting Machine Operator','Any Industry'),
	 ('330','Riveting Machine Operator,  Automatic','Aircraft Mfg.'),
	 ('351','Road Roller Operator','Construction'),
	 ('330','Robotic Machine Operator','Aircraft Mfg.'),
	 ('470','Robotics Service Technician','Machinery Mfg.'),
	 ('351','Rock Drill Operator','Construction'),
	 ('560','Roll Tender/Setter','Print. & Pub.'),
	 ('330','Roller Machine Operator','Metal Prod., Nec'),
	 ('230','Rolling Mill Attendant','Steel & Rel.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Roofer','Construction'),
	 ('480','Roofer Helper','Construction'),
	 ('322','Room Service Clerk','Hotel & Rest.'),
	 ('480','Rotary Driller','Petrol. & Gas'),
	 ('480','Rotary Driller Helper','Petrol. & Gas'),
	 ('230','Rougher, Bar Mill','Steel & Rel.'),
	 ('480','Roughneck','Petrol. & Gas'),
	 ('480','Roustabout','Petrol. & Gas'),
	 ('211','Router','Clerical'),
	 ('330','Router Operator','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Router Operator','Woodworking'),
	 ('460','Rubber Cutter','Rubber Goods'),
	 ('230','Rubber Mill Operator','Plastic-Synth.'),
	 ('340','Rug Cleaner, Hand Or Machine','Laundry & Rel.'),
	 ('321','Rug Repairer','Laundry & Rel.'),
	 ('420','Saddle Maker','Leather Prod.'),
	 ('212','Safety Engineer','Profess. & Kin.'),
	 ('212','Safety Manager','Profess. & Kin.'),
	 ('380','Sail Maker','Ship-Boat Mfg.'),
	 ('322','Salad Maker','Water Trans.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Sales Agent, Insurance','Insurance'),
	 ('214','Sales Clerk','Retail Trade'),
	 ('251','Sales Rep,  Farm, Garden Eqpt.  & Supplies','Wholesale Tr.'),
	 ('212','Sales Rep, Advertising','Print. & Pub.'),
	 ('251','Sales Rep, Computers And Edp  Systems','Wholesale Tr.'),
	 ('212','Sales Rep, Data Processing  Services','Business Ser.'),
	 ('251','Sales Rep, Door-To-Door','Retail Trade'),
	 ('212','Sales Rep, Financial Services','Financial'),
	 ('251','Sales Rep, Livestock','Wholesale Tr.'),
	 ('251','Sales Rep, Office Machines','Retail Trade');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('251','Sales Rep, Recreation,  Sporting Goods','Wholesale Tr.'),
	 ('251','Sales Rep, Security Systems','Business Ser.'),
	 ('212','Sales Rep, Upholstery,  Furniture Repair','Retail Trade'),
	 ('251','Sales Rep, Women''s And Girls''  Apparel','Wholesale Tr.'),
	 ('251','Salesperson, Automobiles','Retail Trade'),
	 ('214','Salesperson, General  Merchandise','Retail Trade'),
	 ('214','Salesperson, Parts','Retail Trade'),
	 ('214','Salesperson, Shoes','Retail Trade'),
	 ('430','Salvage Cutter','Welding'),
	 ('480','Sandblaster','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Sander, Machine','Woodworking'),
	 ('322','Sandwich Maker','Hotel & Rest.'),
	 ('331','Sausage Maker','Meat Products'),
	 ('331','Sausage Stuffer','Meat Products'),
	 ('321','Saw Blade Filer','Any Industry'),
	 ('360','Sawmill Worker','Saw. & Plan.'),
	 ('330','Sawyer','Plastic Prod.; Plastic-Synth.'),
	 ('230','Sawyer, Circular Head','Saw. & Plan.'),
	 ('230','Sawyer, Cork Slabs','Wood Prod., Nec.'),
	 ('330','Sawyer, Trimmer','Saw. & Plan.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('111','Scheduler','Clerical'),
	 ('111','Scoreboard Operator','Amuse. & Rec.'),
	 ('251','Scout, Professional Sports','Amuse. & Rec.'),
	 ('460','Scrap Handler','Any Industry'),
	 ('320','Screen Maker, Photographic  Process','Any Industry'),
	 ('221','Screen Maker, Wallpaper','Paper Goods'),
	 ('330','Screw Machine Operator,  Multiple Spindle','Machine Shop'),
	 ('330','Scroll Machine Operator','Struct. Metal'),
	 ('321','Sculptor','Stonework'),
	 ('112','Secretary','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('112','Secretary, Legal','Clerical'),
	 ('112','Secretary, Medical','Medical Ser.'),
	 ('112','Secretary, Social','Clerical'),
	 ('212','Security Guard, Gate','Any Industry'),
	 ('213','Security Guard, Plant','Any Industry'),
	 ('390','Security Officer','Any Industry'),
	 ('230','Seed Pelleter','Agriculture'),
	 ('212','Seismologist','Profess. & Kin.'),
	 ('330','Semiconductor Processor','Electron. Comp.'),
	 ('380','Septic Tank Installer','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Septic Tank Servicer','Construction'),
	 ('214','Service Manager','Automotive Ser.'),
	 ('213','Service Representative','Utilities'),
	 ('340','Service Station Attendant','Automotive Ser.'),
	 ('213','Set Designer','Motion Picture'),
	 ('320','Setter, Automatic Spinning  Lathe','Any Industry'),
	 ('480','Sewage Disposal Worker','Sanitary Ser.'),
	 ('480','Sewer Line Repairer','Sanitary Ser.'),
	 ('341','Sewer Pipe Cleaner','Business Ser.'),
	 ('221','Sewer, Hand','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Sewing Machine Operator','Tex. Prod., Nec.'),
	 ('370','Sewing Machine Repairer','Any Industry'),
	 ('330','Shaper Operator','Woodworking'),
	 ('330','Shaping Machine Operator','Machine Shop'),
	 ('430','Shear Operator','Any Industry'),
	 ('320','Sheetmetal Fabricating  Machine Operator','Any Industry'),
	 ('370','Sheetmetal Mechanic','Any Industry'),
	 ('491','Shellfish Grower','Fishing & Hunt.'),
	 ('490','Sheriff, Deputy','Government Ser.'),
	 ('481','Shipfitter','Ship-Boat Mfg.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('480','Shipfitter Helper','Ship-Boat Mfg.'),
	 ('360','Shipping And Receiving Clerk','Clerical'),
	 ('214','Shipping Checker','Clerical'),
	 ('380','Shipwright','Ship-Boat Mfg.'),
	 ('221','Shoe Repairer','Personal Ser.'),
	 ('214','Shop Estimator','Automotive Ser.'),
	 ('210','Show Host/Hostess','Radio-Tv Broad.'),
	 ('250','Shuttle Bus Driver','Any Industry'),
	 ('380','Sider','Construction'),
	 ('341','Sign Poster','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('120','Sign Writer, Hand','Any Industry'),
	 ('221','Silk Screen Etcher','Engraving'),
	 ('221','Silk Screen Frame Assembler','Any Industry'),
	 ('221','Silk Screen Printer','Any Industry'),
	 ('220','Silversmith','Jewelry-Silver.'),
	 ('210','Singer','Amuse. & Rec.'),
	 ('221','Ski Repairer, Production','Toy-Sport Equip.'),
	 ('420','Skinner','Meat Products'),
	 ('480','Skip Tender','Mine & Quarry'),
	 ('111','Skip Tracer','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Slasher Tender','Textile'),
	 ('230','Slicing Machine Operator','Bakery Products'),
	 ('460','Slitting Machine Operator  Helper','Any Industry'),
	 ('331','Slurry Blender','Cement'),
	 ('590','Smoke Jumper','Forestry'),
	 ('351','Snowplow Operator','Government Ser.'),
	 ('230','Soap Maker','Soap & Rel.'),
	 ('111','Social Worker','Social Ser.'),
	 ('111','Software Engineer','Profess. & Kin.'),
	 ('213','Soil Conservationist','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('481','Solar Energy System Installer','Any Industry'),
	 ('470','Solar Fabrication Technician','Machine Shop'),
	 ('120','Solderer','Jewelry-Silver.'),
	 ('111','Sorter','Clerical'),
	 ('221','Sorter, Agricultural  Produce','Agriculture'),
	 ('221','Sorter, Remnant','Textile'),
	 ('214','Sorter-Pricer','Nonprofit Org.'),
	 ('212','Sound Effects Technician','Radio-Tv Broad.'),
	 ('212','Sound Mixer','Motion Picture'),
	 ('322','Sous Chef','Hotel & Rest.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('490','Special Agent','Government Ser.'),
	 ('390','Special Policeman','Any Industry'),
	 ('212','Speech Pathologist','Profess. & Kin.'),
	 ('331','Spinner','Sugar & Conf.'),
	 ('430','Spinner, Hydraulic','Any Industry'),
	 ('330','Spinning Lathe Operator','Any Industry'),
	 ('221','Sports Equipment Repairer','Any Industry'),
	 ('221','Spot Cleaner','Laundry & Rel.'),
	 ('111','Spotter, Photographic','Photofinishing'),
	 ('330','Spray Painting Machine  Operator','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Spreader Machine, Cloth','Textile'),
	 ('491','Stable Attendant','Any Industry'),
	 ('230','Stamping Press Operator','Any Industry'),
	 ('390','Stand-In','Motion Picture'),
	 ('330','Stapling Machine Operator','Any Industry'),
	 ('380','Station Installer And  Repairer','Tel. & Tel.'),
	 ('332','Stationary Engineer','Any Industry'),
	 ('111','Statistician, Applied','Profess. & Kin.'),
	 ('340','Steam Cleaner','Automotive Ser.'),
	 ('482','Steel Erector','Construction');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Steel Plate Caulker','Any Industry'),
	 ('482','Steeple Jack','Construction'),
	 ('112','Stenocaptioner','Radio-Tv Broad.'),
	 ('112','Stenographer','Clerical'),
	 ('112','Stenotype Operator','Clerical'),
	 ('330','Stereotype Caster & Molder','Print. & Pub.'),
	 ('230','Sterilizer','Medical Ser.'),
	 ('351','Stevedore','Water Trans.'),
	 ('230','Still Tender','Any Industry'),
	 ('230','Stitcher, Standard Machine','Boot & Shoe');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Stitcher, Wire, Saddle And  Side','Print. & Pub.'),
	 ('214','Stock Clerk','Clerical'),
	 ('360','Stock Clerk','Clerical'),
	 ('360','Stock Clerk','Retail Trade'),
	 ('214','Stock Clerk, Automotive Eqpt.','Clerical'),
	 ('321','Stone Carver','Stonework'),
	 ('480','Stone Driller','Stonework'),
	 ('220','Stone Setter','Jewelry-Silver.'),
	 ('480','Stone Splitter Operator','Stonework'),
	 ('321','Stonecutter, Hand','Stonework');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Stonecutter, Machine','Stonework'),
	 ('380','Stonemason','Construction'),
	 ('120','Stoner','Jewelry-Silver.'),
	 ('470','Stove Refinisher','Any Industry'),
	 ('321','Straightener, Hand','Any Industry'),
	 ('330','Straightening Press Operator','Any Industry'),
	 ('330','Stranding Machine Operator','Elec. Equip.'),
	 ('460','Strapping Machine Operator','Wood. Container'),
	 ('340','Street Cleaner/Sweeper,  Manual','Government Ser.'),
	 ('380','Street Light Servicer','Utilities');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('351','Street Sweeper Operator','Government Ser.'),
	 ('111','Stress Analyst','Aircraft Mfg.'),
	 ('212','Stress Test Technician','Medical Ser.'),
	 ('230','Stretching Machine Tender,  Frame','Leather Mfg.'),
	 ('221','Striper & Letterer, Hand,  Motorcycles','Any Industry'),
	 ('331','Stripper-Etcher, Printed  Circuit Boards','Electron. Comp.'),
	 ('482','Structural Steel Worker','Construction'),
	 ('482','Structural Steel Worker Helper','Construction'),
	 ('380','Stucco Mason','Construction'),
	 ('590','Stunt Performer','Amuse. & Rec.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Subassembler','Machinery Mfg.'),
	 ('332','Substation Operator','Utilities'),
	 ('250','Subway Car Operator','R.R. Trans.'),
	 ('332','Supercalender Operator','Paper & Pulp'),
	 ('213','Superintendent,  Construction','Construction'),
	 ('212','Superintendent, Building','Any Industry'),
	 ('212','Superintendent, Plant  Protection','Any Industry'),
	 ('360','Supply Clerk','Clerical'),
	 ('220','Surgeon','Medical Ser.'),
	 ('230','Surgical Dressing Maker,  Machine','Protective Dev.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('213','Surveyor','Surveying/Cartographic'),
	 ('360','Surveyor Helper','Any Industry'),
	 ('340','Swimming Pool Servicer','Any Industry'),
	 ('111','Switchboard Operator, Police  District','Government Ser.'),
	 ('331','Syrup Maker','Beverage'),
	 ('111','Systems Analyst','Profess. & Kin.'),
	 ('111','Systems Programmer','Profess. & Kin.'),
	 ('230','Tacking Machine Operator','Any Industry'),
	 ('221','Tailor, Alteration','Garment'),
	 ('221','Tailor, Custom','Garment');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Tank Cleaner','Any Industry'),
	 ('380','Taper','Construction'),
	 ('120','Taper, Printed Circuit Layout','Electron. Comp.'),
	 ('330','Tapping Machine Tender','Nut & Bolt'),
	 ('111','Tax Clerk','Clerical'),
	 ('111','Tax Preparer','Business Ser.'),
	 ('250','Taxi Driver','Motor Trans.'),
	 ('311','Taxidermist','Profess. & Kin.'),
	 ('214','Teacher Aide','Education'),
	 ('214','Teacher,  Preschool/Kindergarten','Education');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Teacher, Adult Education','Education'),
	 ('214','Teacher, Elementary School','Education'),
	 ('214','Teacher, Industrial Arts','Education'),
	 ('214','Teacher, Learning Disabled','Education'),
	 ('214','Teacher, Music','Education'),
	 ('390','Teacher, Physical Education','Education'),
	 ('214','Teacher, Physically Impaired','Education'),
	 ('212','Teacher, Secondary School','Education'),
	 ('214','Teacher, Vocational Training','Education'),
	 ('120','Technical Illustrator','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('112','Telegraph Operator','Clerical'),
	 ('112','Telephone Answering Service  Operator','Business Ser.'),
	 ('350','Telephone Directory  Deliverer','Business Ser.'),
	 ('112','Telephone Operator','Clerical'),
	 ('320','Television And Radio Repairer','Any Industry'),
	 ('111','Television Console Monitor','Radio-Tv Broad.'),
	 ('380','Television Receiver/Antenna  Installer','Any Industry'),
	 ('470','Television Technician','Radio-Tv Broad.'),
	 ('211','Teller','Financial'),
	 ('214','Teller, Vault','Financial');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('320','Template Maker','Any Industry'),
	 ('380','Terrazzo Installer','Construction'),
	 ('480','Terrazzo Installer Helper','Construction'),
	 ('220','Test Tech, Semiconductor  Processing Equipment','Electron. Comp.'),
	 ('320','Tester, Nondestructive','Profess. & Kin.'),
	 ('212','Testing Machine Operator,  Metal','Profess. & Kin.'),
	 ('370','Thermal Cutter, Hand','Welding'),
	 ('330','Thermal Cutting-Machine  Operator','Welding'),
	 ('320','Thermostat Repairer','Inst. & App.'),
	 ('221','Thread Cutter, Hand Or  Machine','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('330','Threading Machine Operator','Machine Shop'),
	 ('321','Thrower','Pottery & Porc.'),
	 ('212','Ticket Agent','Any Industry'),
	 ('230','Ticket Printer','Any Industry'),
	 ('240','Ticket Taker','Amuse. & Rec.'),
	 ('330','Tile Maker','Brick & Tile'),
	 ('380','Tile Setter','Construction'),
	 ('480','Tile Setter Helper','Construction'),
	 ('330','Timber-Sizer Operator','Saw. & Plan.'),
	 ('212','Time And Motion Study  Analyst','Profess. & Kin.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('321','Tire Builder, Automobile','Rubber Tire'),
	 ('460','Tire Changer','Automotive Ser.'),
	 ('460','Tire Molder','Rubber Tire'),
	 ('321','Tire Recapper','Automotive Ser.'),
	 ('460','Tire Repairer','Automotive Ser.'),
	 ('420','Tire Trimmer, Hand','Rubber Tire'),
	 ('211','Title Searcher','Real Estate'),
	 ('211','Toll Collector','Government Ser.'),
	 ('360','Tool And Equipment Rental  Clerk','Business Ser.'),
	 ('360','Tool Crib Attendant','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('220','Tool Designer','Profess. & Kin.'),
	 ('330','Tool Dresser','Any Industry'),
	 ('320','Tool Maker','Machine Shop'),
	 ('320','Tool Maker, Bench','Machine Shop'),
	 ('120','Tool Programmer, Numerical  Control','Electron. Comp.'),
	 ('430','Torch Straightener And  Heater','Any Industry'),
	 ('221','Touch-Up Painter, Hand','Any Industry'),
	 ('482','Tower Erector','Construction'),
	 ('212','Toxicologist','Pharmaceut.'),
	 ('221','Toy Assembler','Toy-Sport Equip.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('351','Tractor Crane Operator','Any Industry'),
	 ('351','Tractor Operator','Any Industry'),
	 ('111','Traffic Clerk','Business Ser.'),
	 ('212','Traffic Engineer','Government Ser.'),
	 ('490','Traffic Officer','Government Ser.'),
	 ('111','Train Dispatcher','R.R. Trans.'),
	 ('112','Transcribing Machine  Operator','Clerical'),
	 ('370','Transformer Assembler','Elec. Equip.'),
	 ('111','Translator, Documents','Profess. & Kin.'),
	 ('492','Tree Cutter','Agriculture');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('491','Tree Pruner, Low Level/Bucket','Agriculture'),
	 ('482','Tree Surgeon','Agriculture'),
	 ('482','Tree Trimmer','Tel. & Tel.'),
	 ('230','Trimmer, Machine','Garment'),
	 ('322','Trimmer, Meat','Meat Products'),
	 ('221','Trophy Assembler','Jewelry-Silver.'),
	 ('350','Truck Driver','Any Industry'),
	 ('460','Truck Driver Helper','Any Industry'),
	 ('350','Truck Driver, Concrete  Mixing','Construction'),
	 ('350','Truck Driver, Dump Truck','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('350','Truck Driver, Garbage','Motor Trans.'),
	 ('350','Truck Driver, Logs','Logging'),
	 ('351','Truck Driver, Road Oiling','Construction'),
	 ('350','Truck Driver, Sales Route','Retail Trade'),
	 ('350','Truck Driver, Tank Truck','Petrol. Refin.'),
	 ('350','Truck Driver, Tow Truck','Automotive Ser.'),
	 ('350','Truck Driver, Tractortrailer','Any Industry'),
	 ('460','Truck Loader','Any Industry'),
	 ('320','Tube Assembler, Cathode Ray','Electron. Comp.'),
	 ('221','Tube Bender, Hand','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('341','Tube Cleaner','Any Industry'),
	 ('330','Tubular Furniture Maker','Any Industry'),
	 ('111','Tumor Registrar','Medical Ser.'),
	 ('332','Turbine Attendant','Utilities'),
	 ('332','Turbine Operator','Utilities'),
	 ('330','Turret Lathe Operator','Machine Shop'),
	 ('212','Tutor','Education'),
	 ('221','Typesetter/Compositor','Print. & Pub.'),
	 ('230','Typesetting Machine Tender','Print. & Pub.'),
	 ('112','Typist','Clerical');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('212','Ultrasound Technologist','Medical Ser.'),
	 ('214','Umpire','Amuse. & Rec.'),
	 ('110','Underwriter, Mortgage Loan','Financial'),
	 ('321','Upholstery Repairer','Furniture'),
	 ('110','Urban Planner','Profess. & Kin.'),
	 ('370','Used Car Renovator','Retail Trade'),
	 ('240','Usher','Amuse. & Rec.'),
	 ('330','Utility Operator','Saw. & Plan.'),
	 ('351','Vacuum Cleaner Operator,  Industrial','Any Industry'),
	 ('320','Vacuum Cleaner Repairer','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('250','Valet, Parking','Automotive Ser.'),
	 ('330','Variety Saw Operator','Woodworking'),
	 ('112','Varitype Operator','Clerical'),
	 ('214','Vault Cashier','Business Ser.'),
	 ('213','Vendor','Amuse. & Rec.'),
	 ('340','Venetian Blind Cleaner And  Repairer','Any Industry'),
	 ('311','Veterinarian','Medical Ser.'),
	 ('311','Veterinarian, Laboratory  Animal Care','Medical Ser.'),
	 ('311','Veterinary Technician','Medical Ser.'),
	 ('212','Videotape Operator, Studio','Radio-Tv Broad.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('110','Vocational Rehabilitation  Consultant','Government Ser.'),
	 ('212','Voice Pathologist','Profess. & Kin.'),
	 ('221','Wafer Fab Operator','Electron. Comp.'),
	 ('322','Waiter/Waitress','Hotel & Rest.'),
	 ('480','Wallpaper Remover, Steam','Construction'),
	 ('360','Warehouse Worker','Any Industry'),
	 ('331','Washer, Machine','Any Industry'),
	 ('340','Washer, Machine','Laundry & Rel.'),
	 ('460','Washing Machine Loader And  Puller','Laundry & Rel.'),
	 ('460','Waste Disposal Attendant,  Radioactive','Any Industry');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('332','Waste Treatment Operator','Chemical'),
	 ('332','Wastewater Treatment Plant  Operator','Sanitary Ser.'),
	 ('220','Watch Repairer','Clock & Watch'),
	 ('380','Water Meter Installer','Waterworks'),
	 ('332','Water Pump Tender','Any Industry'),
	 ('460','Water Softener Servicer And  Installer','Business Ser.'),
	 ('332','Water Treatment Plant  Operator','Waterworks'),
	 ('230','Weaver, Textile','Nonmet. Min.'),
	 ('330','Web Press Operator','Print. & Pub.'),
	 ('330','Web Press Operator Helper,  Offset','Print. & Pub.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('360','Weigher, Production','Any Industry'),
	 ('214','Weigher, Shipping And  Receiving','Clerical'),
	 ('240','Weight Reduction Specialist','Personal Services'),
	 ('460','Welder Helper','Welding'),
	 ('430','Welder, Arc','Welding'),
	 ('370','Welder, Combination','Welding'),
	 ('370','Welder, Gas','Welding'),
	 ('370','Welder, Gun','Welding'),
	 ('370','Welder, Production Line','Welding'),
	 ('430','Welder, Tack','Welding');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('380','Welder-Fitter','Welding'),
	 ('330','Welding Machine Operator,  Arc','Welding'),
	 ('480','Well Digger','Construction'),
	 ('480','Well Drill Operator','Construction'),
	 ('480','Well Drill Operator Helper','Construction'),
	 ('480','Well Puller','Petrol. & Gas'),
	 ('320','Wheel Lacer And Truer','Motor-Bicycles'),
	 ('482','Wind Generating Electric  Power Installer','Construction'),
	 ('330','Winder','Paper Goods'),
	 ('460','Winder Operator, Floor  Coverings','Fabrication');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Winder, Magnetic Tape','Recording'),
	 ('330','Winder, Yarn','Tex. Prod., Nec.'),
	 ('330','Winding-Machine Operator,  Cloth','Textile'),
	 ('341','Window Cleaner','Any Industry'),
	 ('380','Window Repairer','Any Industry'),
	 ('213','Wine Maker','Beverage'),
	 ('240','Wine Steward/Stewardess','Hotel & Rest.'),
	 ('332','Winery Worker','Beverage'),
	 ('330','Wire Drawing Machine Tender','Nonfer. Metal'),
	 ('221','Wire Harness Assembler','Elec. Equip.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('230','Wire Wrapping Machine  Operator','Electron. Comp.'),
	 ('330','Wood-Carving Machine  Operator','Woodworking'),
	 ('321','Wool And Pelt Grader','Meat Products'),
	 ('112','Word Processing Machine  Operator','Clerical'),
	 ('330','Wrapping Machine Operator','Any Industry'),
	 ('480','Wrecker, Construction','Construction'),
	 ('112','Writer, Prose, Fiction And  Nonfiction','Profess. & Kin.'),
	 ('112','Writer, Technical  Publications','Profess. & Kin.'),
	 ('212','Xray Operator, Industrial','Any Industry'),
	 ('310','Xray Technologist','Medical Ser.');
INSERT INTO Occupation (GroupNo,OccupDsc,IndustryDsc) VALUES
	 ('460','Yard Attendant, Building  Materials','Retail Trade'),
	 ('351','Yarder Operator,  Fixed/Portable','Logging');

ALTER TABLE Occupation
RENAME COLUMN GroupNo TO GroupNumber;

ALTER TABLE Occupation
RENAME COLUMN OccupDsc TO Description;

ALTER TABLE Occupation
RENAME COLUMN IndustryDsc TO IndustryName;


drop table if exists industry;
CREATE TABLE Industry (
     ID SERIAL primary key,
     description VARCHAR(100)
     );
    
   


insert into industry (description)
(
    select distinct industryName
    from occupation
    where UPPER(industryName) != 'ANY INDUSTRY'
    union ALL
    select 
    'Any Industry' as description
);
update industry 
set id = 0
where UPPER(description) = 'ANY INDUSTRY';

 

alter table occupation
add industryID integer;

 

update occupation occ
set industryid = (select i.id from industry  i where occ.industryname = i.description);

INSERT INTO "patient" ("medicalrecordnumber","dominantsideid","activitylevelid","birthcountryid","genderid","maritalid","languageid","ethnicityid","suffixid","middlename","nameprefixid","lastname","firstname","dateofbirth","emailaddress","city","address","state","zip","socialsecuritynumber","dayphone","countryid","eveningphone","fax","height","weight","heartrate","livingconditionid","assistedlivingid","socialsecurityid","disabilityid","workerscompensationid","smokerid","lasteditedby","lasteditedon","createdby","createdon","bloodpressure","alternateid","county","patienttext","dateofexam","dateofinjury","occupationcodepd","occupationnamepd","avgweeklyearningpd","occupationcat","insuranceid","claimnumber","claimadjuster","employerid","lawyerid","educationid","treatingphysicianid","dateofmmi","isfourthedition","createddate","createdbyuser","id") VALUES ('',-1,-1,-1,-1,-1,-1,-1,-1,'',-1,'Stern','Lili',CURRENT_TIMESTAMP,'','','','','','','',-1,'','',-1,-1,-1,-1,-1,-1,-1,-1,-1,'',CURRENT_TIMESTAMP,'',CURRENT_TIMESTAMP,'',-1,'','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'','',-1,-1,-1,'','',-1,-1,-1,-1,CURRENT_TIMESTAMP,-1,CURRENT_TIMESTAMP,'',-1)

INSERT INTO "patient" ("medicalrecordnumber","dominantsideid","activitylevelid","birthcountryid","genderid","maritalid","languageid","ethnicityid","suffixid","middlename","nameprefixid","lastname","firstname","dateofbirth","emailaddress","city","address","state","zip","socialsecuritynumber","dayphone","countryid","eveningphone","fax","height","weight","heartrate","livingconditionid","assistedlivingid","socialsecurityid","disabilityid","workerscompensationid","smokerid","lasteditedby","lasteditedon","createdby","createdon","bloodpressure","alternateid","county","patienttext","dateofexam","dateofinjury","occupationcodepd","occupationnamepd","avgweeklyearningpd","occupationcatid","insuranceid","claimnumber","claimadjuster","employerid","lawyerid","educationid","treatingphysicianid","dateofmmi","isfourthedition","createddate","createdbyuser") VALUES ('',0,0,0,0,0,0,0,0,'Orlando',0,'Jaggon','Leon',CURRENT_TIMESTAMP,'','','','','','','',0,'','',0,0,0,0,0,0,0,0,0,'',CURRENT_TIMESTAMP,'',CURRENT_TIMESTAMP,'',0,'','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'','',0,0,0,'','',0,0,0,0,CURRENT_TIMESTAMP,0,CURRENT_TIMESTAMP,'')