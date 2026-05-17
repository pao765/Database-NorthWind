CREATE TABLE [dbo].[DimDate] (
    [DateSK]    INT          NOT NULL,
    [FullDate]  DATE         NOT NULL,
    [Year]      INT          NOT NULL,
    [Quarter]   INT          NOT NULL,
    [Month]     INT          NOT NULL,
    [MonthName] VARCHAR (15) NOT NULL,
    [Day]       INT          NOT NULL,
    [DayOfWeek] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([DateSK] ASC)
);

