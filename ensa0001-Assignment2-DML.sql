-- Filename: ensa0001-Assignment2-DML.sql
-- Description: 
-- CST 8215-340 lab:342
-- Author: Salih Ensrioglu, ensa0001@algonquinlive.com
-- Year: 2020
-- Last Modified: 28 Nov 2018
-- 


DELETE FROM Maintenance_T ;
DELETE FROM Parking_Spot;
DELETE FROM Tenant_T;
DELETE FROM Company_T;
DELETE FROM House_T;
DELETE FROM Landlord_T ;


-- POPULATING LANDLORD TABLE 
INSERT INTO landlord_T(Landlord_ID,Landlord_Name,Landlord_Surname,Landlord_Phone,Landlord_Adress)
	VALUES( 'L01', 'Salih', 'Ensarioglu' , 8732884988, '50 Mulvagh Ave' );
INSERT INTO landlord_t(Landlord_ID,Landlord_Name,Landlord_Surname,Landlord_Phone,Landlord_Adress)
	VALUES( 'L02', 'Karan', 'Kundu' , 8732883288, '50 Mulvagh Ave' );
INSERT INTO landlord_t(Landlord_ID,Landlord_Name,Landlord_Surname,Landlord_Phone,Landlord_Adress)
	VALUES( 'L03', 'Rambot', 'Jack' , 6132886523, '58 Mulvagh Ave' );
INSERT INTO landlord_t(Landlord_ID,Landlord_Name,Landlord_Surname,Landlord_Phone,Landlord_Adress)
	VALUES( 'L04', 'Stanley', 'Pieda' , 61302866, '1340 Erindale Dr' );
INSERT INTO landlord_t(Landlord_ID,Landlord_Name,Landlord_Surname,Landlord_Phone,Landlord_Adress)
	VALUES( 'L05', 'Alex', 'De Souza' , 6138880299, '75 Granton Ave' );

-- POPULATING HOUSE TABLE 

INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)-- HOUSE ID PK
	VALUES( 'H01', 'L01' , 'Nepean', 'Single House', 350000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)-- LANDLORD ID FK 
	VALUES( 'H02', 'L01' , 'Orleans', 'Town House', 275000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H03', 'L02' , 'Barhaven', 'Apartment', 210500 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H04', 'L03' , 'Downtown', 'Single House', 600000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H05', 'L04' , 'Nepean', 'Town House', 310000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H06', 'L04' , 'Gatineu', 'Apartment', 212000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H07', 'L05' , 'Smith Falls', 'Town House', 150000 );
INSERT INTO House_T(House_ID,Landlord_ID,House_Location,House_Type,House_Value)
	VALUES( 'H08', 'L05' , 'Manotick', 'Single House', 510000 );

-- POPULATING Company_T
INSERT INTO Company_T(Company_ID, Company_Name, Service_Type,Company_Adress)
	VALUES( 'C01','Ottawa Plumbing inc. ','Plumbing','50 Mulvagh Ave.' );
INSERT INTO Company_T(Company_ID, Company_Name, Service_Type,Company_Adress)
	VALUES( 'C02','Orleans Plumbing inc. ','Plumbing','1233 Elmira Dr' );
INSERT INTO Company_T(Company_ID, Company_Name, Service_Type,Company_Adress)
	VALUES( 'C03','AskForHelp inc. ','Electricical Issues','123 Baseline Rd' );
INSERT INTO Company_T(Company_ID, Company_Name, Service_Type,Company_Adress)
	VALUES( 'C04','AskHelp inc. ','Electricical Issues','23 Elgin st' );
INSERT INTO Company_T(Company_ID, Company_Name, Service_Type,Company_Adress)
	VALUES( 'C05','YourHelper inc. ','Air Conditioning ','12 York st' );

-- POPULATING Tenant
select*from tenant_t ;
INSERT INTO Tenant_T(Tenant_ID, House_ID, Tenant_Name,Tenant_Surname, Tenant_Phone)
	VALUES( 'T01','H01','Barack','Obama',6134449988 );
INSERT INTO Tenant_T(Tenant_ID, House_ID, Tenant_Name,Tenant_Surname, Tenant_Phone)
	VALUES( 'T02','H02','Michelle','Obama',6134449983 );
INSERT INTO Tenant_T(Tenant_ID, House_ID, Tenant_Name,Tenant_Surname, Tenant_Phone)
	VALUES( 'T03','H03','Ali','Atlamaz',6135688980 );
INSERT INTO Tenant_T(Tenant_ID, House_ID, Tenant_Name,Tenant_Surname, Tenant_Phone)
	VALUES( 'T04','H04','Serkan','Satici',6134441280 );
INSERT INTO Tenant_T(Tenant_ID, House_ID, Tenant_Name,Tenant_Surname, Tenant_Phone)
	VALUES( 'T05','H04','Serkan','alici',6134441280 );


-- POPULATING Parking Table
INSERT INTO Parking_Spot   (  ParkingID,Tenant_ID, Parking_type,parking_location)
	VALUES( 'P01','T01','Driveway','Elgin 45');
INSERT INTO Parking_Spot   (  ParkingID,Tenant_ID, Parking_type,parking_location)
	VALUES( 'P02','T02','Underground','Baseline 2314');
INSERT INTO Parking_Spot   (  ParkingID,Tenant_ID, Parking_type,parking_location)
	VALUES( 'P03','T03','Garage','Metcalfe 13');
INSERT INTO Parking_Spot   (  ParkingID,Tenant_ID, Parking_type,parking_location)
	VALUES( 'P04','T04','Underground','Baseline 2314');
INSERT INTO Parking_Spot   (  ParkingID,Tenant_ID, Parking_type,parking_location)
	VALUES( 'P05','T05','Garage','Baseline 2314');

-- POPULATING Maintenance_T

INSERT INTO Maintenance_T   (   Invoice_ID,Maintenance_Date, Staff_Name,Staff_Surname,Company_ID,House_ID)
	VALUES( 'INV01','10-10-2020','Alexandro ','Vavro','C01','H02');
INSERT INTO Maintenance_T   (   Invoice_ID,Maintenance_Date, Staff_Name,Staff_Surname,Company_ID,House_ID)
	VALUES( 'INV02','10-10-2019','Frank ','Emanuel','C02','H02');
INSERT INTO Maintenance_T   (   Invoice_ID,Maintenance_Date, Staff_Name,Staff_Surname,Company_ID,House_ID)
	VALUES( 'INV03','10-10-2018','Said ','Sefa','C03','H03');
INSERT INTO Maintenance_T   (   Invoice_ID,Maintenance_Date, Staff_Name,Staff_Surname,Company_ID,House_ID)
	VALUES( 'INV04','10-10-2017','Muhammed ','Akpolat','C04','H03');
INSERT INTO Maintenance_T   (   Invoice_ID,Maintenance_Date, Staff_Name,Staff_Surname,Company_ID,House_ID)
	VALUES( 'INV05','10-10-2016','Hasan ','Akpolat','C05','H04');

--select*from maintenance_t ;
--UNION

SELECT house_location, house_type FROM House_T
UNION
SELECT landlord_name, landlord_surname FROM Landlord_T ;




--METADATA

SELECT column_name, data_type, character_maximum_length
FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'maintenance_t' OR
TABLE_NAME = 'parking_spot' OR
TABLE_NAME = 'company_t' OR
TABLE_NAME = 'landlord_T' OR
TABLE_NAME = 'house_t' OR 
TABLE_NAME = 'tenant_t'  ;

-- QUERY 

SELECT * FROM landlord_T
WHERE landlord_name = 'Salih';


-- eof: ensa0001-Assignment2-DML.sql

