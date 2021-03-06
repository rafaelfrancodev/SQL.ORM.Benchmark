USE [master]

GO
	IF NOT EXISTS (
		SELECT
			name
		FROM
			sys.databases
		WHERE
			name = 'DB_BENCHMARK'
	) BEGIN CREATE DATABASE [DB_BENCHMARK]
END

GO

USE [DB_BENCHMARK]

CREATE TABLE DB_BENCHMARK.dbo.TB_PERSON (
	UserId int IDENTITY(1,1),
	FirstName varchar(255) NOT NULL,
	LastName varchar(255) NOT NULL,
	JobArea varchar(255) NOT NULL,
	JobDescriptor varchar(255) NOT NULL,
	JobTitle varchar(255) NOT NULL,
	JobType varchar(255) NOT NULL,
	PRIMARY KEY (UserId)
)

GO
