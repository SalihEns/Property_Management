--JOINS

SELECT 
   company_T.company_id, company_name, maintenance_T.invoice_ID
FROM 
   maintenance_T
RIGHT  JOIN  company_T
   ON company_T. company_ID = invoice_ID
    where invoice_id is null ; 
--Tables

SELECT * FROM Maintenance_T ;
SELECT *  FROM Parking_Spot;
SELECT *  FROM Company_T;
SELECT * FROM House_T;
SELECT * FROM Landlord_T ;
SELECT * FROM Tenant_T;

SELECT 
   Landlord_T.landlord_name, Landlord_T.landlord_surname,house_T.house_location
FROM   
  landlord_T
LEFT  JOIN  House_T
   ON Landlord_T.landlord_id =  house_T.house_id ;

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
