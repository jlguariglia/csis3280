CREATE DATABASE LSWareHouseDB;
USE LSWareHouseDB;
CREATE TABLE Aisle(
   AisleID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,AisleNo INT  NOT NULL
  ,AisleRows INT  NOT NULL
  ,AisleColumns INT  NOT NULL
);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (1,5,4,5);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (2,3,6,7);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (3,4,4,8);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (4,5,3,4);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (5,4,4,8);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (6,4,4,4);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (7,3,6,2);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (8,5,5,1);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (9,1,4,2);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (10,1,5,1);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (11,1,5,1);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (12,6,5,10);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (13,5,6,4);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (14,5,4,8);
INSERT INTO Aisle(AisleID,AisleNo,AisleRows,AisleColumns) VALUES (15,1,6,2);
CREATE TABLE Client(
   ClientID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,ClientName VARCHAR(20) NOT NULL
  ,ClientDOB VARCHAR(20) NOT NULL
  ,ClientPhoneNo VARCHAR(20) NOT NULL
);
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (1,'Stephanie Panswick','657-78-5116','(154) 5632033');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (2,'Clarie Glantz','116-57-3193','(850) 4358215');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (3,'Birgitta Retchless','694-41-4273','(754) 9220765');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (4,'Erminie Scuse','852-41-7995','(352) 6510393');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (5,'Sula Agastina','801-26-0767','(121) 2079044');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (6,'Zia McLevie','738-34-3681','(938) 1891897');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (7,'Clarance Bodley','898-34-0396','(549) 9654176');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (8,'Mollee Seamans','170-77-1494','(386) 9738337');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (9,'Even Robyns','665-35-8569','(806) 1591291');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (10,'Tulley Lailey','473-61-8476','(801) 1577397');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (11,'Paul Dovydenas','203-96-8813','(360) 1756778');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (12,'Eb Colbeck','175-62-5837','(974) 8699103');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (13,'Tracy Wasling','424-78-3555','(973) 6473788');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (14,'Shepperd Brackenridge','296-64-4490','(219) 3070468');
INSERT INTO Client(ClientID,ClientName,ClientDOB,ClientPhoneNo) VALUES (15,'Meridith Lording','263-20-9133','(618) 8493700');
CREATE TABLE Orders(
   OrderID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,OrderTotalPrice NUMERIC NOT NULL
  ,ClientID INT  NOT NULL
  ,FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (1,27,2);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (2,7,15);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (3,27,8);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (4,2,1);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (5,30,14);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (6,11,11);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (7,5,5);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (8,8,2);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (9,11,6);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (10,18,10);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (11,14,12);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (12,3,13);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (13,28,5);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (14,29,5);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (15,6,15);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (16,15,4);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (17,6,10);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (18,8,12);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (19,15,3);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (20,25,12);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (21,26,14);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (22,17,14);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (23,25,3);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (24,17,10);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (25,15,4);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (26,5,5);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (27,13,8);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (28,13,15);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (29,2,8);
INSERT INTO Orders(OrderID,OrderTotalPrice,ClientID) VALUES (30,1,9);
CREATE TABLE Product(
   ProductID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,ProductName VARCHAR(32) NOT NULL
  ,ProductCategory VARCHAR(20) NOT NULL
  ,ProductReferenceNo VARCHAR(20) NOT NULL
  ,ProductDimensions VARCHAR(20) NOT NULL
  ,ProductPrice NUMERIC NOT NULL
  ,AisleID INT  NOT NULL
  ,FOREIGN KEY (AisleID) REFERENCES Aisle(AisleID)
);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (1,'Chicken Breast Wing On','Groceries','506481328-7','60x40x20',0.50,4);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (2,'Tijuana Desk','Furniture','256996150-7','20x15x21',27.41,1);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (3,'Pasta - Lasagne, Fresh','Groceries','196798353-4','120x30x50',1.92,14);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (4,'Lamala Table','Furniture','943475192-6','2x10x6',27.78,7);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (5,'Nut - Walnut, Chopped','Groceries','282775763-X','80x5x15',40.68,11);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (6,'Wine - Red, Antinori Santa','Groceries','815675522-7','60x40x25',44.91,4);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (7,'Cabbage - Green','Groceries','707448097-5','65x25x26',34.75,7);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (8,'Denmark Chair','Furniture','043178694-1','60x40x82',4.09,8);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (9,'Wine - Mondavi Coastal Private','Groceries','450614433-3','60x82x28',9.45,11);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (10,'Thailand Closet','Furniture','001228613-3','5x40x29',47.06,12);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (11,'Pickerel - Fillets','Groceries','294603336-8','60x40x30',29.85,3);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (12,'Brazil Bed','Furniture','159513701-7','60x97x31',39.82,11);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (13,'Puree - Kiwi','Groceries','690902828-7','60x40x32',10.48,7);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (14,'Ireland Fridge','Appliance','384508622-X','47x40x33',9.35,3);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (15,'Sauerkraut','Groceries','531114935-3','60x40x34',47.68,3);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (16,'Icecream Cone - Areo Chocolate','Groceries','013060652-9','57x12x35',20.28,14);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (17,'Soup - French Onion, Dry','Groceries','049999681-X','78x30x36',4.86,14);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (18,'Peace Microwave','Appliance','664437341-0','60x40x37',26.32,15);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (19,'Lex Oven','Appliance','116066178-2','60x40x38',29.33,15);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (20,'Wine - White, Colubia Cresh','Groceries','484171425-1','60x40x39',4.56,4);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (21,'Lid - 0090 Clear','Groceries','173225965-8','54x78x40',40.52,4);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (22,'General Mattress','Furniture','306440414-8','60x40x41',37.45,10);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (23,'Soup - Campbells Beef Noodle','Groceries','231469814-2','36x49x42',43.44,3);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (24,'Muffin - Mix - Mango Sour Cherry','Groceries','359500011-0','60x40x43',17.27,11);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (25,'Lid - 10,12,16 Oz','Groceries','700420316-6','45x87x44',48.09,12);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (26,'QUO Dishwasher','Appliance','585742747-9','60x40x45',44.37,13);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (27,'Ice Freezer','Appliance','550030802-5','60x40x46',35.46,1);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (28,'Veal - Sweetbread','Groceries','621882002-5','60x40x47',28.47,13);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (29,'Wine - Crozes Hermitage E.','Groceries','857057383-9','98x45x48',40.10,1);
INSERT INTO Product(ProductID,ProductName,ProductCategory,ProductReferenceNo,ProductDimensions,ProductPrice,AisleID) VALUES (30,'Mcgillicuddy Vanilla Schnap','Groceries','292907881-2','60x40x49',44.82,11);
CREATE TABLE Inventory(
   InventoryID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,ProductID INT  NOT NULL
  ,InventoryQuantity INT  NOT NULL
  ,FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (1,8,7);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (2,10,44);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (3,6,5);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (4,22,20);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (5,22,48);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (6,29,42);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (7,21,12);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (8,14,19);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (9,13,15);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (10,18,23);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (11,18,8);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (12,6,8);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (13,30,14);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (14,13,10);
INSERT INTO Inventory(InventoryID,ProductID,InventoryQuantity) VALUES (15,6,5);
CREATE TABLE Order_product(
   Order_ProductID INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,OrderID INT NOT NULL
  ,ProductID INT NOT NULL
  ,ProductQuantity VARCHAR(20) NOT NULL
  ,FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
  ,FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('1','28','15','2');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('2','27','3','16');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('3','2','22','19');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('4','29','5','16');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('5','13','22','13');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('6','26','24','3');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('7','29','20','9');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('8','18','9','9');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('9','29','19','4');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('10','17','17','3');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('11','26','27','28');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('12','4','12','2');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('13','26','4','2');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('14','18','18','9');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('15','24','19','21');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('16','6','9','22');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('17','25','6','29');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('18','6','5','19');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('19','13','27','1');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('20','9','28','20');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('21','30','22','8');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('22','15','15','16');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('23','7','28','25');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('24','22','21','24');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('25','1','7','18');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('26','19','13','17');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('27','21','12','19');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('28','10','20','26');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('29','5','13','17');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('30','3','8','22');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('31','9','18','10');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('32','20','8','16');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('33','24','20','1');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('34','19','19','20');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('35','10','13','7');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('36','10','29','20');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('37','12','7','3');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('38','4','6','25');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('39','9','17','11');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('40','10','27','24');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('41','16','9','17');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('42','6','8','24');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('43','14','13','28');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('44','3','27','19');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('45','6','18','25');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('46','19','28','21');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('47','4','17','16');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('48','16','17','29');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('49','11','26','1');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('50','1','1','7');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('51','7','15','12');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('52','13','14','30');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('53','24','3','24');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('54','1','4','12');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('55','16','29','30');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('56','25','7','2');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('57','26','29','25');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('58','11','14','26');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('59','27','21','22');
INSERT INTO Order_product(Order_ProductID,OrderID,ProductID,ProductQuantity) VALUES ('60','10','10','30');
