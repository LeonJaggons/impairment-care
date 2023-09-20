drop table if exists impairment_operation;


create table impairment_operation (
	id serial primary key,
	name varchar(100),
	code varchar(50),
	description varchar(255)
);
insert into impairment_operation (name, code, description)
values
	('Addition', 'ADD', 'Specifies that impairment values should be combined with normal addition; for impairments A,B: ADD(A,B) <=> A + B'),
	('Combination', 'COMBINE', 'Specifies that impairment values should be combined with impairment combination; for impairments A, B: COMBINE(A, B) <=> 1-(1-A)(1-B)'),
	('Lookup Multiple of 5', 'LOOKUP_5', 'Impairment value normalized to multiple of 5 should be queried from an existing table of the same name'),
	('Lookup Multiple of 10', 'LOOKUP_10', 'Impairment value normalized to multiple of 10 should be queried from an existing table of the same name');
select * from impairment_operation;

create table patient_impairment (
	id serial primary key,
	patientID int,
	impairment_code varchar(80),
	value float,
	impairment_value float
);

drop table impairment;
create table impairment(
	id serial primary key,
	name varchar(100),
	code varchar(80),
	description varchar(255),
	factors text[],
	operation_code varchar(10),
	impairment_unit varchar(50)
)

insert into impairment (name, code, description, factors, operation_code, impairment_unit)
values 
	('IP Thumb Flexion',   'ThbIPFlex', 'Impairment due to loss of flexion of the thumb IP joint',  null, 'LOOKUP_10', 'ROM'),
	('IP Thumb Extension', 'ThbIPExt', 'Impairment due to loss of extension of the thumb IP joint', null, 'LOOKUP_10', 'ROM'),
	('MP Thumb Flexion',   'ThbMPFlex', 'Impairment due to loss of flexion of the thumb MP joint',  null, 'LOOKUP_10', 'ROM'),
	('MP Thumb Extension', 'ThbMPExt', 'Impairment due to loss of extension of the thumb MP joint', null, 'LOOKUP_10', 'ROM'),
	('Thumb ROM', 'ThbROM', 'Impairment due to loss of thumb range of motion', '{"ThbIPFlex", "ThbIPExt", "ThbMPFlex", "ThbMPExt"}', 'ADD', 'THUMB'),
	('Thumb', 'Thb', 'Impairment of thumb', '{"ThbROM"}', 'ADD', 'HAND')
	
select * from impairment ;
drop table imp_ipthbflex;

drop table imp_ipthbext;
create table imp_thbipflex (
	id serial primary key,
	value float,
	impairment_value float
);
create table imp_thbipext(
	id serial primary key,
	value float,
	impairment_value float
);
create table imp_thbmpext(
	id serial primary key,
	value float,
	impairment_value float
);
create table imp_thbmpflex(
	id serial primary key,
	value float,
	impairment_value float
);


insert into imp_thbipflex (value, impairment_value)
values 
	(-30, 15),
	(-20, 13),
	(-10, 11),
	(0, 8),
	(10, 6),
	(20, 4),
	(30, 4),
	(40, 3),
	(50, 2),
	(60, 1),
	(70, 1),
	(80, 0);
insert into imp_thbipext (value, impairment_value)
values 
	(30, 0),
	(20	, 0),
	(10, 0),
	(0, 1),
	(-10, 2),
	(-20, 3),
	(-30, 5),
	(-40, 7),
	(-50, 9),
	(-60, 11),
	(-70, 13),
	(-80, 15)
;
insert into imp_thbmpflex (value, impairment_value)
values 
	(-40, 10),
	(-30, 9),
	(-20, 8),
	(-10, 7),
	(0, 6),
	(10, 5),
	(20, 4),
	(30, 3),
	(40, 2),
	(50,1),
	(60, 0);
insert into imp_thbmpext (value, impairment_value)
values 
	(-60, 10),
	(-50, 8),
	(-40, 5),
	(-30, 3),
	(-20, 1),
	(-10, 1),
	(0, 0),
	(10, 0),
	(20, 0),
	(30, 0),
	(40, 0)
;
select * from imp_ipthbflex;

--delete from patient_impairment where 1=1;
--drop table patient_impairment;
--select * from patient_impairment pi2;

select * from patient_impairment;
select * from impairment i;
SELECT * FROM "patient_impairment" WHERE patientid = 1 AND impairment_code IN '{"IPThbFlex","IPThbExt","MPThbFlex","MPThbExt"}'

-- GET
select * from impairment i where :code = any(i.factors)