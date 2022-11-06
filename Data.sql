USE TransportCompanyLTD
GO
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (1,'Dan','Quayle','Boss',NULL);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (2,'Ogusten','Coshy','Manager',1);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (3,'Isaac','Newton','Manager',1);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (4,'Erich','Remark','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (5,'Leon','Tolstoy','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (6,'Edgar','Po','Driver',3);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (7,'Fridrich','Nietsche','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (8,'Leon','Tolstoy','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (9,'Albert','Eienstein','Manager',1);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (11,'Julius','Caesar','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (12,'Napoleon','Bonapart','Driver',9);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (13,'Erwin','Schrodinger','Driver',3);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (14,'Herbert','Hoover','Driver',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (15,'Maria','von Eschenbach','Driver',3);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (16,'Lawrence','of Aravia','Driver',3);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (17,'Umberto','Eko','Driver',9);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (18,'Ludwig','van Beethoven','Driver',3);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (19,'Federiko','Felinni','Consultant',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (20,'Aghata','Christi','Consultant',2);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (21,'Arthur','Conan Doyle','Consultant',9);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (22,'Theodor','Ruswelt','Consultant',9);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (23,'Saddam','Husein','Consultant',9);
INSERT INTO Employees(EmployeeID, FirstName,LastName,Title,SupervisorID) VALUES (24,'Fidel','Castro','Consultant',9);


select * from Employees


INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1111AA','Volkswagen','B-53','LightTruck',5)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1112AB','BMW','A-513','Truck',6)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1113AC','Renault','P-3','HeavyTruck',10)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1114AD','BMW','F-148','LightTruck',8)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1115AE','Scania','G-89','Truck',5)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1111BA','Volswagen','I-19','HeavyShip',4)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1112BB','BMV','B-122','HeavyShip',18)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1113BC','Volkswagen','B-999','HeavyShip',16)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1114BD','Porsche Heavy Ind','B-19','HeavyShip',12)
INSERT INTO Vehicles(VINnumber, Make,Model,Type,PersonID) VALUES ('1115BE','Evergreen','K-89','MediumShip',17)

Update Vehicles set PersonID=7 where Model='G-89'
select * from Vehicles

INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (100,'Interros','Russia','Moscow','Lenin street 10,House 20','+7(990)862-51-34','Interros@mail.ru')
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (101,'RoyalShell','UK','London','Picadilli street 4,House 12','+44(760)155-31-33','RShell@gmail.com')
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (102,'Total','France','Paris','Le avenue de Victor Hugo 1,La Meson 3','+33(211)645-31-14','Total@yahoo.com')
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (103,'DeutscheWelle','Germany','Munich','Seminarstrasse 42,Der Hause 14','+49(132)244-22-22','DerWelle@gmail.com')
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (104,'Siemens','Germany','Hamburg','Goetestrasse 12,Der Hause 6','+49(121)132-87-92','Siemens@gmail.de')
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (105,'Philips','Netherlands','Groningen','Wilhelmus street 2,House 34','+31(100)232-75-63',NULL)
INSERT INTO Customers(CustomerID, Name,Country,City,Address,Phonenumber,Email) VALUES (106,'Magazin u Mihalicha','Russia','Torjok','Steet of Krasnyh hrushevskih partizan 112,House 1','+7(777)777-77-77','Misha1337@mail.com')
select * from Customers
Truncate Table Customers

INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1000,'USA','Germany',103,19,'2021-11-2 14:10:00','2021-11-14 16:15:22',0,7000,'2021-11-2')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1001,'USA','France',102,19,'2021-8-1 11:15:15','2021-8-11 18:33:12',0,15000,'2021-8-1 ')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1002,'UK','UK',101,19,'2021-1-8 12:10:10','2021-1-8 16:15:22',0,1000,'2021-1-8')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1003,'UK','UK',101,19,'2021-2-2 13:10:00','2021-2-2 16:15:22',0,7500,'2021-2-2')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1004,'Italy','Italy',103,19,'2021-2-3 17:11:45','2021-2-3 23:15:20',1,500,'2021-2-3')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1005,'South Africa','UK',101,20,'2021-7-7 11:10:10','2021-7-14 12:14:22',0,10000,'2021-7-7')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1006,'South Africa','Italy',102,20,'2021-10-2 12:10:00','2021-10-28 11:35:22',0,11000,'2021-10-2')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1007,'France','France',102,20,'2021-12-2 12:10:00','2021-12-4 16:15:22',1,1000,'2021-12-2')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1008,'Belgium','Netherlands',105,22,'2021-8-7 10:10:00','2021-8-7 15:25:22',0,2250,'2021-8-7')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1009,'Iraq','USA',101,23,'2021-5-5 23:11:10','2021-5-18 13:15:52',0,10000,'2021-5-5')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1010,'Russia','Russia',100,24,'2021-11-9 21:12:00','2021-11-14 11:15:34',0,9000,'2021-11-9')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1011,'Russia','Russia',106,22,'2021-12-21 14:11:10','2021-12-21 16:25:22',0,100,'2021-12-21')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1012,'UK','UK',102,21,'2021-3-2 13:35:00','2021-3-2 20:15:22',0,1000,'2021-3-2')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1013,'UK','UK',105,21,'2021-5-7 18:13:30','2021-5-7 21:10:21',0,5600,'2021-5-7 ')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1014,'UK','Germany',104,21,'2021-8-8 18:10:00','2021-8-11 13:25:22',1,7000,'2021-8-8 ')
INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1015,'UK','UK',101,19,'2021-1-8 12:11:10','2021-1-8 15:15:22',0,2000,'2021-1-8')

INSERT INTO Orders(OrderID, SourceLocation,TargetLocation,CustomerID,EmployeeID,PickupTime,DeliveryTime,Delay,Totalcost,DayofOrder) VALUES (1016,'USA','UK',102,21,'2021-1-8 12:11:10',Null,0,2000,'2021-1-8')

Update Orders set EmployeeID=19 where OrderID=1000

select * from Orders

INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (500,'Spielzeug','I','Die Spielzeugen fur Kinder gemacht im Deutschland,Mengenmessung:Stuck');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (501,'Oil','II','Oil or the black gold,Measurment of amount:Barrels');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (502,'Beer','I','Fresh and tasty drink, Measurment of amount:bottles');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (503,'Diamonds','I','Beuatifull stuff of luxury, Measurment of amount:Killograms');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (504,'Meat','I','Fresh meath for cooking , Measurment of amount:Tonns');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (505,'Uranum','III','Not very dangerous while is not active but still safety rules required  , Measurment of amount:Killogramms');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (506,'Steel','II','Alloy of iron and carbon, Measurment of amount:Tonns');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (507,'Liquid Mercury','IV','The steams of mercurt are extremely dangerous, Measurment of amount:Tonns');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (508,'Iphones','I','New model of phones, Measurment of amount:Things');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (509,'Elecntronics details','II','Different details for electronics, Measurment of amount:Things');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (510,'Textile','I','Textile for cloth, Measurment of amount:Killogramms');
INSERT INTO Products(ProductID, ProductName,SafetyCategory,Description) VALUES (511,'Paper','I','A4 Paper, Measurment of amount:Things');
Truncate Table Products

select * from Products
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1000,508,100000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1001,501,157000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1000,502,100000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1001,503,1570);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1001,504,16600);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1002,504,5000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1002,502,4000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1003,501,45000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1003,509,1000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1003,506,7000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1004,510,1000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1004,511,500);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1005,501,50000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1006,501,80000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1007,503,1050);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1007,510,1500);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1008,500,2000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1008,509,600);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1009,501,150000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1010,505,15000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1010,506,1000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1010,507,12000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1011,502,100);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1012,503,500);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1013,509,10000);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1013,508,100);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1014,509,10050);
INSERT INTO OrderDetails(OrderID, ProductID,Amount) VALUES (1014,506,11200);

Truncate Table OrderDetails
select * from OrderDetails

INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (200,'1115BE',1000)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (201,'1112AB',1000)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (202,'1112AB',1001)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (203,'1113AC',1001)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (204,'1111BA',1001)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (205,'1112AB',1002)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (206,'1113AC',1003)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (207,'1111BA',1004)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (208,'1111BA',1005)
INSERT INTO TripInfo(TripID,VINnumber, OrderID) VALUES (209,'1115BE',1005)

select * from TripInfo


INSERT INTO Crews(TripID, DriverID) VALUES (200,4);
INSERT INTO Crews(TripID, DriverID) VALUES (200,5);
INSERT INTO Crews(TripID, DriverID) VALUES (201,6);
INSERT INTO Crews(TripID, DriverID) VALUES (201,7);
INSERT INTO Crews(TripID, DriverID) VALUES (202,4);
INSERT INTO Crews(TripID, DriverID) VALUES (202,5);

INSERT INTO Crews(TripID, DriverID) VALUES (203,4);
INSERT INTO Crews(TripID, DriverID) VALUES (204,5);
INSERT INTO Crews(TripID, DriverID) VALUES (204,18);
INSERT INTO Crews(TripID, DriverID) VALUES (205,17);
INSERT INTO Crews(TripID, DriverID) VALUES (206,16);
INSERT INTO Crews(TripID, DriverID) VALUES (207,15);
INSERT INTO Crews(TripID, DriverID) VALUES (208,16);
INSERT INTO Crews(TripID, DriverID) VALUES (208,15);
INSERT INTO Crews(TripID, DriverID) VALUES (209,16);
INSERT INTO Crews(TripID, DriverID) VALUES (209,5);
select * from Crews

