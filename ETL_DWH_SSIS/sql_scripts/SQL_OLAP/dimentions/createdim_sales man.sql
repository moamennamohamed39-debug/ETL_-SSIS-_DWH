/****** Object: Table [dbo].[DimSaleMan] Script Date: 4/14/2026 9:50:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSaleMan](
[SalesManSK] [int] IDENTITY(1,1) NOT NULL,
[salesmanBK] [int] NULL,
[FName] [nvarchar](50) NULL,
[LName] [nvarchar](50) NULL,
[phone] [nvarchar](20) NULL,
[email] [nvarchar](100) NULL,
[addressID_BK] [int] NULL,
[streetAddress] [nvarchar](255) NULL,
[city] [nvarchar](100) NULL,
[state] [nvarchar](50) NULL,
[zipcode] [nvarchar](20) NULL,
[SSCode] [varchar](5) NULL,
[start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[isCurrent] [tinyint] NULL,
CONSTRAINT [PK__DimSaleM__2A199F1AF8D14187] PRIMARY KEY CLUSTERED
(
[SalesManSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimSaleMan] ADD CONSTRAINT [DF_DimSaleMan_start_date] DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[DimSaleMan] ADD CONSTRAINT [DF_DimSaleMan_isCurrent] DEFAULT ((1)) FOR [isCurrent]
GO



