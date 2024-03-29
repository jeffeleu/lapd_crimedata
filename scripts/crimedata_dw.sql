IF DB_ID('crimedata_dw_igl') IS NULL EXECUTE('CREATE DATABASE [crimedata_dw_igl];');
GO

USE [crimedata_dw_igl];
GO

IF SCHEMA_ID('INSTANCE') IS NULL EXECUTE('CREATE SCHEMA [INSTANCE];');
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_crime ( 
	crime_id             int      NOT NULL,
	dr_no                varchar(15)      NULL,
	part_1_2             numeric(1)      NULL,
	crm_cd               varchar(3)      NULL,
	crm_cd_desc          varchar(70)      NULL,
	mocodes              varchar(70)      NULL,
	crm_cd_1             varchar(3)      NULL,
	crm_cd_2             varchar(3)      NULL,
	crm_cd_3             varchar(3)      NULL,
	crm_cd_4             varchar(3)      NULL,
	CONSTRAINT pk_dim_crime PRIMARY KEY  ( crime_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_date ( 
	date_id              int      NOT NULL,
	date_rptd            datetime      NULL,
	date_occ             datetime      NULL,
	CONSTRAINT pk_dim_date PRIMARY KEY  ( date_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_location ( 
	location_id          int      NOT NULL,
	area                 varchar(2)      NULL,
	area_name            varchar(100)      NULL,
	rpt_dist_no          varchar(4)      NULL,
	location             varchar(50)      NULL,
	cross_street         varchar(50)      NULL,
	lat                  numeric(7,4)      NULL,
	lon                  numeric(7,4)      NULL,
	CONSTRAINT pk_dim_location PRIMARY KEY  ( location_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_premise ( 
	premise_id           int      NOT NULL,
	premis_cd            numeric(3)      NULL,
	premis_desc          varchar(50)      NULL,
	CONSTRAINT pk_dim_premise PRIMARY KEY  ( premise_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_status ( 
	status_id            int      NOT NULL,
	[status]             varchar(2)      NULL,
	status_descr         varchar(20)      NULL,
	CONSTRAINT pk_dim_status PRIMARY KEY  ( status_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_time ( 
	time_id              int      NOT NULL,
	time_occ             varchar(4)      NULL,
	CONSTRAINT pk_dim_time PRIMARY KEY  ( time_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_victim ( 
	victim_id            int      NOT NULL,
	vict_age             varchar(3)      NULL,
	vict_sex             varchar(1)      NULL,
	vict_descent         varchar(1)      NULL,
	CONSTRAINT pk_dim_victim PRIMARY KEY  ( victim_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.dim_weapon ( 
	weapon_id            int      NOT NULL,
	weapon_used_cd       varchar(50)      NULL,
	CONSTRAINT pk_dim_weapon PRIMARY KEY  ( weapon_id ) 
 );
GO

CREATE  TABLE crimedata_dw_igl.INSTANCE.facts_incident ( 
	fact_id              bigint      NOT NULL,
	crime_id             int      NOT NULL,
	premise_id           int      NOT NULL,
	weapon_id            int      NOT NULL,
	victim_id            int      NOT NULL,
	date_id              int      NOT NULL,
	time_id              int      NOT NULL,
	location_id          int      NOT NULL,
	status_id            int      NOT NULL,
	CONSTRAINT pk_facts_incident PRIMARY KEY  ( fact_id ) 
 );
GO
