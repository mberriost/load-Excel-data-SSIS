--script to create the database and tables
USE master
GO

--CREATE Database
IF EXISTS(SELECT NAME FROM SYS.databases WHERE NAME='Accidents')
BEGIN
	DROP DATABASE Accidents
END
GO

CREATE DATABASE Accidents
GO

USE Accidents
GO

CREATE TABLE traffic_accidents_monthly(
PeriodMonth INT,
RecordNumber INT,
DayType VARCHAR(10),
Collision VARCHAR(50),
InjuryType VARCHAR(50),
PrimaryFactor VARCHAR(100),
ReportLocation VARCHAR(60),
Latitude VARCHAR(100),
Longitude VARCHAR(100)
)
GO



--drop table traffic_accidents_monthly

-------------------------------------

--create daily table
CREATE TABLE traffic_accidents_daily(
AccidentDate INT,
PeriodMonth INT,
RecordNumber INT,
DayType VARCHAR(10),
Collision VARCHAR(50),
InjuryType VARCHAR(50),
PrimaryFactor VARCHAR(100),
ReportLocation VARCHAR(60),
Latitude VARCHAR(100),
Longitude VARCHAR(100)
)
GO

--drop table traffic_accidents_daily
