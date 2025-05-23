USE [DemoDB]
GO

CREATE TABLE [dbo].[PersonInfo](
[ID] [int] NOT NULL,
[FName] [nvarchar](50) NULL,
[LName] [nvarchar](50) NULL,
[DOB] [date] NULL,
CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED
([ID] ASC)
)
GO