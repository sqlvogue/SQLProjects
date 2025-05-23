-- If you need to use default sizes, uncomment and use the second script instead

/*
Copy and paste the following example into the query window and select Execute. 
This example creates the database Sales. 
Because the keyword PRIMARY isn't used, the first file (Sales_dat) becomes the primary file. 
Because MB or KB aren't specified in the SIZE parameter for the Sales_dat file, it uses MB and is allocated in megabytes. 
The Sales_log file is allocated in megabytes because the MB suffix is explicitly stated in the SIZE parameter.

*/
USE master;
GO

CREATE DATABASE DemoDB
 ON (NAME = Sales_dat,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\saledat.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5)
LOG ON
(NAME = Sales_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\salelog.ldf',
    SIZE = 5 MB,
    MAXSIZE = 25 MB,
    FILEGROWTH = 5 MB);
GO


/*
CREATE DATABASE [DemoDB]
CONTAINMENT = NONE
ON PRIMARY
( NAME = N'DemoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DemoDB.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
LOG ON
( NAME = N'DemoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DemoDB_log.ldf' , SIZE = 8192KB , FILEGROWTH =
65536KB )
*/