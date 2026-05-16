/*
Post-Deployment Script - NorthWind DW
--------------------------------------------------------------------------------------
Order of execution:
1. PackageConfig.data.sql - Initialize ETL checkpoint table
2. DimDate.data.sql - Populate calendar dimension
3. PatchDimDate.data.sql - Add unknown member (DateKey = 0)
*/

:r .\PackageConfig.data.sql
:r .\DimDate.data.sql
:r .\PatchDimDate.data.sql
GO