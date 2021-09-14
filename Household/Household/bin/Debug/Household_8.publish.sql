﻿/*
Deployment script for HouseholdProj

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "HouseholdProj"
:setvar DefaultFilePrefix "HouseholdProj"
:setvar DefaultDataPath "C:\Users\Rick\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\Rick\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating Table [dbo].[March_2021]...';


GO
CREATE TABLE [dbo].[March_2021] (
    [Id]                  INT             NOT NULL,
    [Date_of_Transaction] DATE            NULL,
    [Amount]              DECIMAL (10, 2) NULL,
    [Details]             VARCHAR (30)    NOT NULL,
    [Category]            VARCHAR (10)    NULL,
    [Profit_or_Expense]   VARCHAR (8)     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Update complete.';


GO
