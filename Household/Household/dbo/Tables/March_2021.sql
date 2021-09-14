CREATE TABLE [dbo].[March_2021]
(
	Id INT NOT NULL PRIMARY KEY,
	Date_of_Transaction DATE,
	Amount DECIMAL(10,2), 
	Details VARCHAR(30) NOT NULL,
	Category VARCHAR(10),
	Profit_or_Expense VARCHAR(8)
)
