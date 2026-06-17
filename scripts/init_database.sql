/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    Creates the DataWarehouse database and sets up the three
    medallion architecture schemas: bronze, silver, and gold.
    If the database already exists, it will be dropped and 
    rebuilt from scratch, allowing for a clean reset at any 
    point during development.

WARNING:
    Running this script will permanently delete the existing 
    DataWarehouse database and all of its contents. Only run 
    this if you intend to rebuild the warehouse from the 
    beginning. Ensure any work you want to keep is backed up 
    before proceeding.
=============================================================
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse; 

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
