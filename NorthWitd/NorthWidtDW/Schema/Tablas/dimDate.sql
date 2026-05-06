CREATE TABLE [dbo].[DimDate](
    [DateKey] [int] NOT NULL,
    [FullDate] [date] NOT NULL,
    [Year] [smallint] NOT NULL,
    [Quarter] [tinyint] NOT NULL,
    [Month] [tinyint] NOT NULL,
    [MonthName] [nvarchar](10) NOT NULL,
    [DayOfMonth] [tinyint] NOT NULL,
    [DayOfWeek] [tinyint] NOT NULL,
    [DayName] [nvarchar](10) NOT NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC)
);