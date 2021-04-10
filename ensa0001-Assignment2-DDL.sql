-- FileName: ensa0001-Assignment2-DDL.sql
-- Student Name: Salih Ensarioglu 
-- Description: House_Management Database Assignment2  
-- CST 8215-340	LAB=342
-- Author: Salih Ensarioglu
-- Year: 2020
-- Last Modified: 28 Nov 2020

DROP VIEW IF EXISTS landlord_contact_v;
DROP VIEW IF EXISTS baseline_parking_v;

 
DROP TABLE IF EXISTS Parking_Spot;
DROP TABLE IF EXISTS Maintenance_T;
DROP TABLE IF EXISTS Company_T; 
DROP TABLE IF EXISTS Tenant_T;
DROP TABLE IF EXISTS House_T;
DROP TABLE IF EXISTS Landlord_T;

CREATE TABLE Landlord_T (
  Landlord_ID  char(3), --PK
  Landlord_Name varchar(30),
  Landlord_Surname varchar(30),
  Landlord_Phone char(15),
  Landlord_Adress varchar(30),

  PRIMARY KEY (Landlord_ID)
  
);

CREATE TABLE House_T (
  House_ID  char(3), --PK
  Landlord_ID char(3),
  House_Location varchar(30),
  House_Type varchar(20),
  House_Value decimal (9,0),

  PRIMARY KEY (House_ID),
	CONSTRAINT fk_Landlord_ID FOREIGN KEY (Landlord_ID) 
	REFERENCES Landlord_T(Landlord_ID)

  
);

CREATE TABLE Tenant_T (
  Tenant_ID  char(3),--PK
  House_ID  char(3),
  Tenant_Name varchar(30),
  Tenant_Surname varchar(30),
  Tenant_phone char(11),

  PRIMARY KEY (Tenant_ID),
	CONSTRAINT fk_House_ID FOREIGN KEY (House_ID) 
	REFERENCES House_T(House_ID)
);
CREATE TABLE Company_T (
  Company_ID  char(3),
  Company_Name varchar(30),
  Service_Type varchar(30),
  Company_Adress varchar(30),

  PRIMARY KEY (Company_ID)
  
);
CREATE TABLE Maintenance_T (
  Invoice_ID  char(10),--PK
  Maintenance_Date DATE  ,
  Staff_Name varchar(30),
  Staff_Surname varchar(30),
  Company_ID char(3),   -- FK
  House_ID  char(3), --fk

  PRIMARY KEY(Invoice_ID),
	CONSTRAINT fk_House_ID FOREIGN KEY (House_ID) 
	REFERENCES House_T(House_ID),

	CONSTRAINT fk_Company_ID FOREIGN KEY (Company_ID) 
	REFERENCES Company_T(Company_ID)
  
);


CREATE TABLE Parking_Spot (
  ParkingID  char(3), -- prime key
  Tenant_ID  char(3),-- foreign key
  Parking_type char(15),
  Parking_Location varchar(30),
  PRIMARY KEY (ParkingID),

  CONSTRAINT fk_Tenant_ID FOREIGN KEY (Tenant_ID) 
	REFERENCES Tenant_T(Tenant_ID)
);

CREATE OR REPLACE VIEW baseline_parking_v AS 
 SELECT parking_spot.parking_location,
    parking_spot.parking_type
   FROM parking_spot
  WHERE parking_spot.parking_location::text ~~ '%Baseline%'::text;

CREATE OR REPLACE VIEW landlord_contact_v AS 
 SELECT landlord_t.landlord_name,
    landlord_t.landlord_surname,
    landlord_t.landlord_phone
   FROM landlord_t;


-- eof: ensa0001-Assignment2-DDL.sql
