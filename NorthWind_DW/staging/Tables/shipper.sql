CREATE TABLE [staging].[shipper] (
    [ShipperSK]   INT           IDENTITY (1, 1) NOT NULL,
    [ShipperID]   INT           NULL,
    [CompanyName] NVARCHAR (40) NULL,
    [Phone]       NVARCHAR (24) NULL,
    PRIMARY KEY CLUSTERED ([ShipperSK] ASC)
);

