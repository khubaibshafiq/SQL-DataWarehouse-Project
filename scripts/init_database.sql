/*
-------------------------------------------
CREATE DATABASE AND SCHEMA
-------------------------------------------
Script Purpose:
          This Script create a new Database "DataWarehouse" after checking if it already exists. If the database is 
          already exists, also Additionally this scripts create three Schemas "Bronze", "Silver" and "Gold" within the database. 
*/

USE master;

--CHECK IF DATAWAREHOUSE DATABASE ALREADY EXISTS OR NOT--

IF EXISTS (SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')
BEGIN 
	DROP DATABASE DataWarehouse;
END;
GO

-- CREATE DATABASE DATAWAREHOUSE --
CREATE DATABASE DataWarehouse;

-- USE Database "DataWarehouse" --
USE DataWarehouse;
GO
-- Now, Create Schemas (Bronze Layer, Silver Layer, Gold Layer) --
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
