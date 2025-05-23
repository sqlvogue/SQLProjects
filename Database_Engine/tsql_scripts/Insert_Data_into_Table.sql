-- Insert Data into dbo.PersonInfo table created in DemoDB

USE DemoDB
GO

INSERT INTO dbo.PersonInfo (ID, Fname, LName, DOB)
VALUES
(1, 'John', 'Doe', '1990-01-15'),
(2, 'Jane', 'Smith', '1985-03-22'),
(3, 'Michael', 'Johnson', '1992-07-08'),
(4, 'Emily', 'Brown', '1988-11-30'),
(5, 'David', 'Williams', '1995-06-10');

-- View the data
SELECT * FROM dbo.PersonInfo;