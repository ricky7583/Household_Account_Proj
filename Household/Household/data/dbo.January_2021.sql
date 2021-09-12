CREATE TABLE [dbo].[January_2021] (
    [Id]                  INT            NOT NULL,
    [Date_of_Transaction] DATE           NULL,
    [Amount]              DECIMAL (6, 2) NULL,
    [Details]             VARCHAR (30)   NOT NULL,
    [Category]            VARCHAR (10)   NULL,
    [Profit_or_Expense]          VARCHAR (8)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

