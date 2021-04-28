create database OnlineShoppingSystem;

use OnlineShoppingSystem;

create table Customer(
    CustomerId int not null identity,
    FirstName varchar(20) not null,
    LastName varchar(20) not null,
    Email varchar(60) not null,
    Password varchar(128) not null,
    Gender char(1),
    Country varchar(20),
    PhoneNumber varchar(9),
    primary key(CustomerId)
);

create table Product(
    ProductId int not null identity,
    ProductName varchar(30),
    ProductPrice money not null,
    ProductSize varchar(4),
    ProductColor varchar(12),
    ProductDescription varchar(240) not null,
    primary key(ProductId)
);

create table Orders(
    OrderId bigint not null identity,
    CustomerId int not null,
    OrderDetails varchar(240),
    OrderStatus char(1),
	OrderDate datetime,
    primary key(OrderId),
    foreign key(CustomerId) references Customer(CustomerId)
);

create table OrderDetails(
    OrderDetailsId int not null identity,
    ProductId int not null,
    OrderId bigint not null,
    OrderDetailsQuantity smallint not null,
    OrderDetailsPrice money not null,
    primary key(OrderDetailsId),
    foreign key(ProductId) references Product(ProductId),
    foreign key(OrderId) references Orders(OrderId)
);
	
	
	
-- customer inserts
insert into Customer(
	FirstName,
	LastName,
	Email,
	Password,
	Gender,
	Country,
	PhoneNumber
) values
	('Buddy', 'Davison', 'buddy.davison@mail.com', '1111111111', 'M', 'Italy', '025550155'),
	('Francis', 'Cannon', 'francis@mail.com', '2222222222', 'M', 'Italy', '025550117'),
	('Lucie', 'Coleman', 'lucie.coleman@mail.com', '3333333333', 'F', 'Portugal', '025550159'),
	('Jonathan', 'Paine', 'jonathan.paine@mail.com', '4444444444', 'M', 'Spain', '025550162'),
	('Danica', 'Clay', 'danica.clay@mail.com', '5555555555', 'F', 'Mexico', '025550135'),
	('Leighton', 'Baines', 'leighton.baines@mail.com', '6666666666', 'M', 'Poland', '025550180'),
	('Emmanuel', 'Akhtar', 'emmanuel.akhtar@mail.com', '7777777777', 'M', 'France', '745559681'),
	('Breanna', 'Sweeney', 'breanna.sweeney@mail.com', '8888888888', 'F', 'Suecia', '700555349'),
	('Elleanor', 'Banks', 'elleanor.banks@mail.com', '9999999999', 'F', 'Spain', '655565231'),
	('Teresa', 'Huffman', 'teressa.huffman@mail.com', '0000000000', 'F', 'Portugal', '745558340');

-- product inserts
insert into Product(
	ProductName,
    ProductPrice,
    ProductSize,
    ProductColor,
    ProductDescription
) values
	('Mouse', '10.99', 'N/D', 'Black', 'Basic mouse for computer.'),
	('Keyboard', '8.99', 'M', 'Black', 'Basic keyboard for computer.'),
	('Microphone', '20.99', 'N/D', 'Grey', 'Basic microphone for computer.'),
	('Headphones', '16.49', 'N/D', 'White', 'Basic headphones for computer.'),
	('Earphones', '16.89', 'N/D', 'White', 'Basic earphones for computer.'),
	('Speakers', '19.09', 'S', 'Black', 'Basic speakers for computer.'),
	('Monitor', '87.99', 'M', 'Black', 'Basic monitor for computer.'),
	('Desktop 1', '327.89', 'N/D', 'Red', 'Basic computer.'),
	('Desktop 2', '349.49', 'N/D', 'Blue', 'Basic computer. Improved specs.'),
	('Laptop', '399.19', 'N/D', 'Gray', 'Basic laptop.');
	
-- orders inserts
insert into Orders(
	CustomerId,
    OrderDetails,
    OrderStatus,
	OrderDate
) values
	(1, 'No description.','P','2021-03-14 09:09:16'),
	(2, 'No description.','C','2021-03-14 10:09:40'),
	(3, 'No description.','C','2021-03-14 10:26:53'),
	(4, 'No description.','P','2021-03-14 10:55:34'),
	(5, 'No description.','C','2021-03-14 11:27:16'),
	(6, 'No description.','T','2021-03-14 14:26:25'),
	(7, 'No description.','C','2021-03-14 15:02:24'),
	(8, 'No description.','P','2021-03-14 15:55:26'),
	(9, 'No description.','C','2021-03-14 17:12:22'),
	(10, 'No description.','T','2021-03-14 17:26:03');
	
-- order_details inserts
insert into OrderDetails(
	ProductId,
    OrderId,
    OrderDetailsQuantity,
	OrderDetailsPrice
) values
	(1, 1, 1, '10.99'),
	(2, 2, 1, '8.99'),
	(3, 3, 2, '41.98'),
	(4, 4, 1, '16.49'),
	(5, 5, 1, '16.89'),
	(6, 6, 1, '19.09'),
	(7, 7, 1, '87.99'),
	(8, 8, 2, '655.78'),
	(9, 9, 2, '698.98'),
	(10, 10, 2, '798.38');