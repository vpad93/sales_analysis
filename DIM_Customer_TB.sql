--Cleansed DmCustomers Table--
SELECT 
  c.[CustomerKey], 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.[FirstName], 
  --[MiddleName], 
  c.[LastName], 
  c.[FirstName] + ' ' + c.[LastName] as FullName, 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.[DateFirstPurchase], 
  --[CommuteDistance] 
  g.[City] 
FROM 
  dbo.DimCustomer as c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC;
