SELECT cu.[CustomerID]
      ,cu.[FirstName]
      ,cu.[LastName]
      ,cu.[Email]
      ,cu.[PhoneNumber]
	  ,g.GenderID
	  ,g.GenderName
      

  FROM [Sales_OLTP].[dbo].[Customer] as cu
  left join [Sales_OLTP].[dbo].Gender  as g
  on(cu.GenderID=g.GenderID)
