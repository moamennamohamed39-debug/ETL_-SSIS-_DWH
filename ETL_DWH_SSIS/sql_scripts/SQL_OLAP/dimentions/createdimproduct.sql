
/****** Object: Table [dbo].[DimProduct] Script Date: 4/14/2026 9:50:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
[ProductSK] [int] IDENTITY(1,1) NOT NULL,
[productBK] [int] NULL,
[productName] [nvarchar](100) NULL,
[productPrice] [decimal](10, 2) NULL,
[subcategoryID_BK] [int] NULL,
[subcategoryName] [nvarchar](100) NULL,
[categoryID_BK] [int] NULL,
[categoryName] [nvarchar](100) NULL,
[SSCode] [varchar](5) NULL,
[start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[isCurrent] [bit] NULL,
CONSTRAINT [PK__DimProdu__B40D13B03FC24DB9] PRIMARY KEY CLUSTERED
(
[ProductSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProduct] ADD CONSTRAINT [DF_DimProduct_start_date] DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[DimProduct] ADD CONSTRAINT [DF_DimProduct_isCurrent] DEFAULT ((1)) FOR [isCurrent]
GO
