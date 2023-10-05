drop table if exists impairment_operation;
create table impairment_operation (
	id serial primary key,
	name varchar(100),
	code varchar(50),
	description varchar(255)
);
insert into impairment_operation (name, code, description)
values
	('Scaled Addition', 'SCALED_ADD', 'Specifies that impairment values should be combined with normal addition, with each addend scaled by some factor; for impairments A,B'),
	('Addition', 'ADD', 'Specifies that impairment values should be combined with normal addition; for impairments A,B: ADD(A,B) <=> A + B'),
	('Combination', 'COMBINE', 'Specifies that impairment values should be combined with impairment combination; for impairments A, B: COMBINE(A, B) <=> 1-(1-A)(1-B)'),
	('Lookup', 'LOOKUP', 'Impairment value should be queried from an existing table of the same name'),
	('Lookup Multiple of 5', 'LOOKUP_5', 'Impairment value normalized to multiple of 5 should be queried from an existing table of the same name'),
	('Lookup Multiple of 10', 'LOOKUP_10', 'Impairment value normalized to multiple of 10 should be queried from an existing table of the same name');
select * from impairment_operation;

drop table if exists patient_impairment;
create table patient_impairment (
	id serial primary key,
	patientID int,
	impairment_code varchar(80),
	value float,
	impairment_value float,
	error_code varchar(20),
	error_description varchar(100)
);

drop table if exists impairment;
create table impairment(
	id serial primary key,
	name varchar(100),
	code varchar(80),
	description varchar(255),
	factors text[],
	operation_code varchar(10),
	impairment_unit varchar(50),
	values_table varchar(50)
);

insert into impairment (name, code, description, factors, operation_code, impairment_unit, values_table)
values 
	-- THUMB
	('IP Thumb Flexion',   'ThbIPFlex', 'Impairment due to loss of flexion of the thumb IP joint',  null, 'LOOKUP_10', 'ROM', 'imp_ipflex'),
	('IP Thumb Extension', 'ThbIPExt', 'Impairment due to loss of extension of the thumb IP joint', null, 'LOOKUP_10', 'ROM', 'imp_ipext'),
	('MP Thumb Flexion',   'ThbMPFlex', 'Impairment due to loss of flexion of the thumb MP joint',  null, 'LOOKUP_10', 'ROM', 'imp_mpflex'),
	('MP Thumb Extension', 'ThbMPExt', 'Impairment due to loss of extension of the thumb MP joint', null, 'LOOKUP_10', 'ROM', 'imp_mpext'),
	('Thumb ROM', 'ThbROM', 'Impairment due to loss of thumb range of motion', '{"ThbIPFlex", "ThbIPExt", "ThbMPFlex", "ThbMPExt"}', 'ADD', 'THUMB', null),
	('Thumb IP Synovial Hypertrophy', 'ThbIPHypertrophy', 'Impairment due to hypertrophy of thumb IP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_upperhypertrophy'),
	('Thumb MP Synovial Hypertrophy', 'ThbMPHypertrophy', 'Impairment due to hypertrophy of thumb MP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_upperhypertrophy'),
	('Thumb CMC Synovial Hypertrophy', 'ThbCMCHypertrophy', 'Impairment due to hypertrophy of thumb CMC joint', null, 'LOOKUP', 'THB_OTHER', 'imp_upperhypertrophy'),
	('Thumb IP Sublaxation or Dislocation', 'ThbIPSubDis', 'Impairment due to sublaxation or dislocation of thumb IP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppersubdis'),
	('Thumb MP Sublaxation or Dislocation', 'ThbMPSubDis', 'Impairment due to sublaxation or dislocation of thumb MP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppersubdis'),
	('Thumb CMC Sublaxation or Dislocation', 'ThbCMCSubDis', 'Impairment due to sublaxation or dislocation of thumb CMC joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppersubdis'),
	('Thumb IP Passive Mediolateral Instability', 'ThbIPMedInst', 'Impairment due to mediolateral instability of thumb IP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppermedinst'),
	('Thumb MP Passive Mediolateral Instability', 'ThbMPMedInst', 'Impairment due to mediolateral instability of thumb MP joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppermedinst'),
	('Thumb CMC Passive Mediolateral Instability', 'ThbCMCMedInst', 'Impairment due to mediolateral instability of thumb CMC joint', null, 'LOOKUP', 'THB_OTHER', 'imp_uppermedinst'),
	('Thumb Active Ulnar or Radial Deviation', 'ThbAURD', 'Impairment of the thumb due to active ulnar or radial devation', null , 'LOOKUP', 'THUMB', 'imp_aurd'),
	('Thumb Rotational Deformity', 'ThbRotDef', 'Impairment of the thumb due to rotational deformity', null , 'LOOKUP', 'THUMB', 'imp_rotdef'),
	('Thumb Intrinsic Tightness', 'ThbIntTight', 'Impairment of the thumb due to intrinsic tightness', null , 'LOOKUP', 'THUMB', 'imp_inttight'),
	('Thumb Constrictive Tenosynovitis', 'ThbConTen', 'Impairment of the thumb due to constrictive tenosynovitis', null , 'LOOKUP', 'THUMB', 'imp_conten'),
	('Thumb Hypertrophy', 'ThbHypertrophy', 'Impairment of thumb due to hypertrophy', '{"ThbIPHypertrophy", "ThbMPHypertrophy", "ThbCMCHypertrophy"}', 'COMBINE', 'THB', null);
insert into impairment (name, code, description, factors, operation_code, impairment_unit, values_table)
values 
		-- LITTLE
	('IP Little Flexion',   'LittleIPFlex', 'Impairment due to loss of flexion of the Little IP joint',  null, 'LOOKUP_10', 'ROM', 'imp_ipflex'),
	('IP Little Extension', 'LittleIPExt', 'Impairment due to loss of extension of the Little IP joint', null, 'LOOKUP_10', 'ROM', 'imp_ipext'),
	('MP Little Flexion',   'LittleMPFlex', 'Impairment due to loss of flexion of the Little MP joint',  null, 'LOOKUP_10', 'ROM', 'imp_mpflex'),
	('MP Little Extension', 'LittleMPExt', 'Impairment due to loss of extension of the Little MP joint', null, 'LOOKUP_10', 'ROM', 'imp_mpext'),
	('Little ROM', 'LittleROM', 'Impairment due to loss of Little range of motion', '{"LittleIPFlex", "LittleIPExt", "LittleMPFlex", "LittleMPExt"}', 'ADD', 'Little', null),
	('Little IP Synovial Hypertrophy', 'LittleIPHypertrophy', 'Impairment due to hypertrophy of Little IP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_upperhypertrophy'),
	('Little MP Synovial Hypertrophy', 'LittleMPHypertrophy', 'Impairment due to hypertrophy of Little MP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_upperhypertrophy'),
	('Little CMC Synovial Hypertrophy', 'LittleCMCHypertrophy', 'Impairment due to hypertrophy of Little CMC joint', null, 'LOOKUP', 'Little_OTHER', 'imp_upperhypertrophy'),
	('Little IP Sublaxation or Dislocation', 'LittleIPSubDis', 'Impairment due to sublaxation or dislocation of Little IP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppersubdis'),
	('Little MP Sublaxation or Dislocation', 'LittleMPSubDis', 'Impairment due to sublaxation or dislocation of Little MP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppersubdis'),
	('Little CMC Sublaxation or Dislocation', 'LittleCMCSubDis', 'Impairment due to sublaxation or dislocation of Little CMC joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppersubdis'),
	('Little IP Passive Mediolateral Instability', 'LittleIPMedInst', 'Impairment due to mediolateral instability of Little IP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppermedinst'),
	('Little MP Passive Mediolateral Instability', 'LittleMPMedInst', 'Impairment due to mediolateral instability of Little MP joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppermedinst'),
	('Little CMC Passive Mediolateral Instability', 'LittleCMCMedInst', 'Impairment due to mediolateral instability of Little CMC joint', null, 'LOOKUP', 'Little_OTHER', 'imp_uppermedinst'),
	('Little Active Ulnar or Radial Deviation', 'LittleAURD', 'Impairment of the Little due to active ulnar or radial devation', null , 'LOOKUP', 'Little', 'imp_aurd'),
	('Little Rotational Deformity', 'LittleRotDef', 'Impairment of the Little due to rotational deformity', null , 'LOOKUP', 'Little', 'imp_rotdef'),
	('Little Intrinsic Tightness', 'LittleIntTight', 'Impairment of the Little due to intrinsic tightness', null , 'LOOKUP', 'Little', 'imp_inttight'),
	('Little Constrictive Tenosynovitis', 'LittleConTen', 'Impairment of the Little due to constrictive tenosynovitis', null , 'LOOKUP', 'THUMB', 'imp_conten');
insert into impairment (name, code, description, factors, operation_code, impairment_unit, values_table)
values 
	-- RING
	('IP Ring Flexion',   'RingIPFlex', 'Impairment due to loss of flexion of the Ring IP joint',  null, 'LOOKUP_10', 'ROM', 'imp_ipflex'),
	('IP Ring Extension', 'RingIPExt', 'Impairment due to loss of extension of the Ring IP joint', null, 'LOOKUP_10', 'ROM', 'imp_ipext'),
	('MP Ring Flexion',   'RingMPFlex', 'Impairment due to loss of flexion of the Ring MP joint',  null, 'LOOKUP_10', 'ROM', 'imp_mpflex'),
	('MP Ring Extension', 'RingMPExt', 'Impairment due to loss of extension of the Ring MP joint', null, 'LOOKUP_10', 'ROM', 'imp_mpext'),
	('Ring ROM', 'RingROM', 'Impairment due to loss of Ring range of motion', '{"RingIPFlex", "RingIPExt", "RingMPFlex", "RingMPExt"}', 'ADD', 'Ring', null),
	('Ring IP Synovial Hypertrophy', 'RingIPHypertrophy', 'Impairment due to hypertrophy of Ring IP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_upperhypertrophy'),
	('Ring MP Synovial Hypertrophy', 'RingMPHypertrophy', 'Impairment due to hypertrophy of Ring MP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_upperhypertrophy'),
	('Ring CMC Synovial Hypertrophy', 'RingCMCHypertrophy', 'Impairment due to hypertrophy of Ring CMC joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_upperhypertrophy'),
	('Ring IP Sublaxation or Dislocation', 'RingIPSubDis', 'Impairment due to sublaxation or dislocation of Ring IP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppersubdis'),
	('Ring MP Sublaxation or Dislocation', 'RingMPSubDis', 'Impairment due to sublaxation or dislocation of Ring MP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppersubdis'),
	('Ring CMC Sublaxation or Dislocation', 'RingCMCSubDis', 'Impairment due to sublaxation or dislocation of Ring CMC joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppersubdis'),
	('Ring IP Passive Mediolateral Instability', 'RingIPMedInst', 'Impairment due to mediolateral instability of Ring IP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppermedinst'),
	('Ring MP Passive Mediolateral Instability', 'RingMPMedInst', 'Impairment due to mediolateral instability of Ring MP joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppermedinst'),
	('Ring CMC Passive Mediolateral Instability', 'RingCMCMedInst', 'Impairment due to mediolateral instability of Ring CMC joint', null, 'LOOKUP', 'Ring_OTHER', 'imp_uppermedinst'),
	('Ring Active Ulnar or Radial Deviation', 'RingAURD', 'Impairment of the Ring due to active ulnar or radial devation', null , 'LOOKUP', 'Ring', 'imp_aurd'),
	('Ring Rotational Deformity', 'RingRotDef', 'Impairment of the Ring due to rotational deformity', null , 'LOOKUP', 'Ring', 'imp_rotdef'),
	('Ring Intrinsic Tightness', 'RingIntTight', 'Impairment of the Ring due to intrinsic tightness', null , 'LOOKUP', 'Ring', 'imp_inttight'),
	('Ring Constrictive Tenosynovitis', 'RingConTen', 'Impairment of the Little due to constrictive tenosynovitis', null , 'LOOKUP', 'THUMB', 'imp_conten');
insert into impairment (name, code, description, factors, operation_code, impairment_unit, values_table)
values 
	-- MIDDLE
		('IP Middle Flexion',   'MiddleIPFlex', 'Impairment due to loss of flexion of the Middle IP joint',  null, 'LOOKUP_10', 'ROM', 'imp_ipflex'),
	('IP Middle Extension', 'MiddleIPExt', 'Impairment due to loss of extension of the Middle IP joint', null, 'LOOKUP_10', 'ROM', 'imp_ipext'),
	('MP Middle Flexion',   'MiddleMPFlex', 'Impairment due to loss of flexion of the Middle MP joint',  null, 'LOOKUP_10', 'ROM', 'imp_mpflex'),
	('MP Middle Extension', 'MiddleMPExt', 'Impairment due to loss of extension of the Middle MP joint', null, 'LOOKUP_10', 'ROM', 'imp_mpext'),
	('Middle ROM', 'MiddleROM', 'Impairment due to loss of Middle range of motion', '{"MiddleIPFlex", "MiddleIPExt", "MiddleMPFlex", "MiddleMPExt"}', 'ADD', 'Middle', null),
	('Middle IP Synovial Hypertrophy', 'MiddleIPHypertrophy', 'Impairment due to hypertrophy of Middle IP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_upperhypertrophy'),
	('Middle MP Synovial Hypertrophy', 'MiddleMPHypertrophy', 'Impairment due to hypertrophy of Middle MP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_upperhypertrophy'),
	('Middle CMC Synovial Hypertrophy', 'MiddleCMCHypertrophy', 'Impairment due to hypertrophy of Middle CMC joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_upperhypertrophy'),
	('Middle IP Sublaxation or Dislocation', 'MiddleIPSubDis', 'Impairment due to sublaxation or dislocation of Middle IP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppersubdis'),
	('Middle MP Sublaxation or Dislocation', 'MiddleMPSubDis', 'Impairment due to sublaxation or dislocation of Middle MP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppersubdis'),
	('Middle CMC Sublaxation or Dislocation', 'MiddleCMCSubDis', 'Impairment due to sublaxation or dislocation of Middle CMC joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppersubdis'),
	('Middle IP Passive Mediolateral Instability', 'MiddleIPMedInst', 'Impairment due to mediolateral instability of Middle IP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppermedinst'),
	('Middle MP Passive Mediolateral Instability', 'MiddleMPMedInst', 'Impairment due to mediolateral instability of Middle MP joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppermedinst'),
	('Middle CMC Passive Mediolateral Instability', 'MiddleCMCMedInst', 'Impairment due to mediolateral instability of Middle CMC joint', null, 'LOOKUP', 'Middle_OTHER', 'imp_uppermedinst'),
	('Middle Active Ulnar or Radial Deviation', 'MiddleAURD', 'Impairment of the Middle due to active ulnar or radial devation', null , 'LOOKUP', 'Middle', 'imp_aurd'),
	('Middle Rotational Deformity', 'MiddleRotDef', 'Impairment of the Middle due to rotational deformity', null , 'LOOKUP', 'Middle', 'imp_rotdef'),
	('Middle Intrinsic Tightness', 'MiddleIntTight', 'Impairment of the Middle due to intrinsic tightness', null , 'LOOKUP', 'Middle', 'imp_inttight'),
	('Middle Constrictive Tenosynovitis', 'MiddleConTen', 'Impairment of the Little due to constrictive tenosynovitis', null , 'LOOKUP', 'THUMB', 'imp_conten');
insert into impairment (name, code, description, factors, operation_code, impairment_unit, values_table)
values 
-- INDEX
	('IP Index Flexion',   'IndexIPFlex', 'Impairment due to loss of flexion of the Index IP joint',  null, 'LOOKUP_10', 'ROM', 'imp_ipflex'),
	('IP Index Extension', 'IndexIPExt', 'Impairment due to loss of extension of the Index IP joint', null, 'LOOKUP_10', 'ROM', 'imp_ipext'),
	('MP Index Flexion',   'IndexMPFlex', 'Impairment due to loss of flexion of the Index MP joint',  null, 'LOOKUP_10', 'ROM', 'imp_mpflex'),
	('MP Index Extension', 'IndexMPExt', 'Impairment due to loss of extension of the Index MP joint', null, 'LOOKUP_10', 'ROM', 'imp_mpext'),
	('Index ROM', 'IndexROM', 'Impairment due to loss of Index range of motion', '{"IndexIPFlex", "IndexIPExt", "IndexMPFlex", "IndexMPExt"}', 'ADD', 'Index', null),
	('Index IP Synovial Hypertrophy', 'IndexIPHypertrophy', 'Impairment due to hypertrophy of Index IP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_upperhypertrophy'),
	('Index MP Synovial Hypertrophy', 'IndexMPHypertrophy', 'Impairment due to hypertrophy of Index MP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_upperhypertrophy'),
	('Index CMC Synovial Hypertrophy', 'IndexCMCHypertrophy', 'Impairment due to hypertrophy of Index CMC joint', null, 'LOOKUP', 'Index_OTHER', 'imp_upperhypertrophy'),
	('Index IP Sublaxation or Dislocation', 'IndexIPSubDis', 'Impairment due to sublaxation or dislocation of Index IP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppersubdis'),
	('Index MP Sublaxation or Dislocation', 'IndexMPSubDis', 'Impairment due to sublaxation or dislocation of Index MP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppersubdis'),
	('Index CMC Sublaxation or Dislocation', 'IndexCMCSubDis', 'Impairment due to sublaxation or dislocation of Index CMC joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppersubdis'),
	('Index IP Passive Mediolateral Instability', 'IndexIPMedInst', 'Impairment due to mediolateral instability of Index IP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppermedinst'),
	('Index MP Passive Mediolateral Instability', 'IndexMPMedInst', 'Impairment due to mediolateral instability of Index MP joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppermedinst'),
	('Index CMC Passive Mediolateral Instability', 'IndexCMCMedInst', 'Impairment due to mediolateral instability of Index CMC joint', null, 'LOOKUP', 'Index_OTHER', 'imp_uppermedinst'),
	('Index Active Ulnar or Radial Deviation', 'IndexAURD', 'Impairment of the Index due to active ulnar or radial devation', null , 'LOOKUP', 'Index', 'imp_aurd'),
	('Index Rotational Deformity', 'IndexRotDef', 'Impairment of the Index due to rotational deformity', null , 'LOOKUP', 'Index', 'imp_rotdef'),
	('Index Intrinsic Tightness', 'IndexIntTight', 'Impairment of the Index due to intrinsic tightness', null , 'LOOKUP', 'Index', 'imp_inttight'),
	('Index Constrictive Tenosynovitis', 'IndexConTen', 'Impairment of the Little due to constrictive tenosynovitis', null , 'LOOKUP', 'THUMB', 'imp_conten'),
	
	('Hand', 'Hand', 'Impairment of the hand', '{"Thb"}', 'SCALED_ADD', 'UPPER_EXTREMITY', null);
	
	--('Upper Extremity', 'Impairment of the upper extremity')
	
select * from impairment ;

create table impairment_scale (
	input_imp_code varchar(50),
	target_imp_code varchar(50),
	operation varchar(10),
	scale_factor float
)

insert into impairment_scale (input_imp_code, target_imp_code, operation, scale_factor)
values 
	('Thb', 'Hand', 'MULT', .4)

select * from impairment_scale is2 
	
drop table if exists  imp_thbipflex;
drop table if exists  imp_thbipext;
drop table if exists  imp_thbmpflex;
drop table if exists  imp_thbmpext;
drop table if exists imp_upperhypertrophy;
drop table if exists imp_uppersubdis;
drop table if exists imp_aurd;
drop table if exists imp_rotdef;
drop table if exists imp_inttight;
drop table if exists imp_conten;

create table imp_ipflex (
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(50)
);
create table imp_ipext(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(50)
);
create table imp_mpext(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(50)
);
create table imp_mpflex(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(50)
);
create table imp_upperhypertrophy(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);

create table imp_uppersubdis(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);

create table imp_uppermedinst(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);

create table imp_aurd(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);
create table imp_rotdef(
	id serial primary key,
	value float,
	
	impairment_value float,
	description varchar(100)
);
create table imp_inttight(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);
create table imp_conten(
	id serial primary key,
	value float,
	impairment_value float,
	description varchar(100)
);






insert into imp_ipflex (value, impairment_value)
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
insert into imp_ipext (value, impairment_value)
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
insert into imp_mpflex (value, impairment_value)
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
insert into imp_mpext (value, impairment_value)
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
insert into imp_upperhypertrophy (value, impairment_value, description)
values 
(0, 0, ''),
	(10, 10, 'Mild: visibly apparent'),
	(20, 20, 'Moderate: palpably apparent'),
	(30, 30, 'Severe: greater than 10% increase in size')
;
insert into imp_uppersubdis (value, impairment_value, description)
values 
(0, 0, ''),
	(20, 20, 'Mild: can be completely reduced manually'),
	(40, 40, 'Moderate: cannot be completely reduced manually'),
	(60, 60, 'Severe: cannot be reduced')
;
insert into imp_uppermedinst (value, impairment_value, description)
values 
(0, 0, ''),
	(10, 10, 'Mild: < 10°'),
	(20, 20, 'Moderate: 10°-20°'),
	(30, 30, 'Severe: > 20°')
;
insert into imp_aurd (value, impairment_value, description)
values 
	(0, 0, ''),
	(10, 10, 'Mild: < 10°'),
	(20, 20, 'Moderate: 10°-30°'),
	(30, 30, 'Severe: > 30°')
;
insert into imp_rotdef(value, impairment_value, description)
values 
	(0, 0, ''),
	(20, 20, 'Mild: < 15°'),
	(40, 40, 'Moderate: 15°-30°'),
	(60, 60, 'Severe: > 30°')
;
insert into imp_inttight(value, impairment_value, description)
values 
	(0, 0, ''),
	(20, 20, 'Mild: PIP flexion 80°-60°'),
	(40, 40, 'Moderate: PIP flexion 59°-20°'),
	(60, 60, 'Severe: PIP flexion ≤ 20°')
;
insert into imp_conten(value, impairment_value, description)
values 
	(0, 0, ''),
	(20, 20, 'Mild: inconstant triggering during active range of motion'),
	(40, 40, 'Moderate: constant triggering during active range of motion'),
	(60, 60, 'Severe: constant triggering during passive range of motion')
;

insert into imp_thb

--delete from patient_impairment where 1=1;
--drop table patient_impairment;
--select * from patient_impairment pi2;

--select * from patient_impairment;
--select * from impairment i;
--SELECT * FROM "patient_impairment" WHERE patientid = 1 AND impairment_code IN '{"IPThbFlex","IPThbExt","MPThbFlex","MPThbExt"}'
--
---- GET
--select * from impairment i where :code = any(i.factors)