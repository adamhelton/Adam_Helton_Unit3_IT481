Use Northwind;

Create Login User_CEO With Password = N'123456', Default_Database=Northwind, Check_Expiration=OFF, Check_Policy=OFF
Create Login User_HR With Password = N'123456', Default_Database=Northwind, Check_Expiration=OFF, Check_Policy=OFF
Create Login User_Sales With Password = N'123456', Default_Database=Northwind, Check_Expiration=OFF, Check_Policy=OFF

Create User User_CEO For Login User_CEO;
Create User User_Sales For Login User_Sales;
Create User User_HR For Login User_HR;

Create Role SalesRole;
Create Role HRRole;
Create Role CEORole;

Grant Select On Orders To CEORole, SalesRole;
Grant Select On Customers To CEORole, SalesRole;
Grant Select On Employees To CEORole, HRRole;

Alter Role CEORole Add Member User_CEO;
Alter Role SalesRole Add Member User_Sales;
Alter Role HRRole Add Member User_HR;
