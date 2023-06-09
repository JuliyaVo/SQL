-- We have a product site with database. 
   --database structure:
     -- TABLE users 
		--userId INTEGER PRIMARY KEY, 
		--password TEXT,
		--email TEXT,
		--firstName TEXT,
		--lastName TEXT,
		--address1 TEXT,
		--zipcode TEXT,
		--city TEXT,
		--state TEXT,
		--country TEXT, 
		--phone TEXT
	
    -- TABLE products
		--productId INTEGER PRIMARY KEY,
		--name TEXT,
		--price REAL,
		--description TEXT,
		--image TEXT,
		--stock INTEGER,
		--categoryId INTEGER,
		--FOREIGN KEY(categoryId) REFERENCES categories(categoryId)
		
    -- TABLE cart
		--userId INTEGER,
		--productId INTEGER,
		--FOREIGN KEY(userId) REFERENCES users(userId),
		--FOREIGN KEY(productId) REFERENCES products(productId)
	-- TABLE categories
		--categoryId INTEGER PRIMARY KEY,
		--name TEXT
		
   


-- Select all columns in the table 'Products' 
 
select * from products;

-- Add 100 products to the table 'Products'

insert into products (productId, name, price,description, image, stock, categoryId)
values (15, 'sed lacus', 73.6, 'suspendisse ornare consequat lectus in', 'Vest.jpg', 15, 4),
       (16, 'in eleifend quam a', 14.91, 'ante nulla justo', 'NamUltrices.jpg', 16, 1),
       (17, 'quis turpis sed', 6.99, 'felis fusce posuere felis sed lacus', 'SocNato.jpg', 17, 2),
       (18, 'fusce congue diam id', 68.3, 'venenatis tristique', 'NullamVariusNulla.jpg', 18, 4),
       (19, 'et magnis', 18.69, 'dolor vel est donec odio', 'MoPo.jpg', 19, 4),
       (20, 'aliquam', 55.4, 'integer pede justo', 'Eros.mp3', 20, 3),
       (21, 'natoque penatibus', 6.95, 'primis in faucibus orci', 'Donec.jpg', 21, 2),
       (22, 'aenean sit', 32.7, 'enim leo rhoncus', 'NullaSedVel.jpg', 22, 1),
       (23, 'in congue etiam', 811, 'elit sodales scelerisque', 'PedeMorbi.jpg', 23, 4),
       (24, 'id consequat', 190, 'dui luctus at feugiat non', 'VivamusInFelis.jpg', 24, 4),
       (25, 'sapien', 39.7, 'quam suspendisse potenti', 'ConsequatNulla.jpg', 25, 3),
       (26, 'in faucibus orci', 13.48, 'a nibh in quis', 'DuisAc.jpg', 26, 2),
       (27, 'scelerisque quam', 75.5, 'nisi volutpat ectus in quam', 'Pharet.jpg', 27, 1),
       (28, 'hac habitasse platea', 95.2, 'sed justo pellentesque', 'VivamusTortorDuis.jpg', 28, 3),
       (29, 'varius ac leo', 26.9, 'lorem ipsum dolor ', 'DictumstEtiam.jpg', 29, 3),
       (30, 'dapibus at diam nam', 1767, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', 'VenenatisTurpis.avi', 30, 1),
       (31, 'natoque penatibus et', 25, 'aenean auctor gravida sem praesent id massa', 'Vestibulum.mp3', 31, 1),
       (32, 'accumsan tortor', 14.86, 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', 'Mi.jpeg', 32, 2),
       (33, 'sollicitudin vitae consectetuer eget', 83, 'posuere nonummy integer non velit donec diam neque vestibulum eget vulputate', 'RidiculusMus.mp3', 33, 3),
       (34, 'vehicula consequat morbi a', 19.1, 'tortor duis mattis egestas metus', 'NamCongueRisus.png', 34, 4),
       (35, 'feugiat non pretium quis', 191, 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 'Neque.txt', 35, 3),
       (36, 'convallis nulla neque', 1962, 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', 'EnimIn.ppt', 36, 3),
       (37, 'et ultrices', 422, 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 'Mattis.mp3', 37, 1),
       (38, 'vestibulum vestibulum ante', 1698, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'RhoncusAliquet.avi', 38, 3),
       (39, 'libero ut massa', 1552, 'tincidunt eu felis fusce posuere felis sed lacus', 'Magnis.mov', 39, 3),
       (40, 'sodales sed tincidunt eu', 47, 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus', 'Sed.png', 40, 4),
       (41, 'vivamus vel', 204, 'sem fusce consequat nulla nisl', 'NequeSapien.doc', 41, 1),
       (42, 'nibh quisque id justo', 1816, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', 'Montes.avi', 42, 2),
       (43, 'tempus sit amet', 193, 'fringilla rhoncus mauris enim leo rhoncus', 'DapibusNulla.gif', 43, 4),
       (44, 'duis at velit eu', 746, 'lobortis convallis tortor risus dapibus augue vel accumsan tellus', 'EgetOrciVehicula.mp3', 44, 4),
       (45, 'duis mattis egestas metus', 1992, 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'AtNulla.ppt', 45, 4),
       (46, 'maecenas pulvinar', 848, 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', 'Neque.jpeg', 46, 4),
       (47, 'condimentum id luctus', 493, 'magna vulputate luctus cum sociis natoque penatibus et magnis', 'NisiAt.doc', 47, 4),
       (48, 'elementum in hac habitasse', 1661, 'massa id lobortis convallis tortor risus dapibus', 'NullamSit.png', 48, 2),
       (49, 'dolor sit', 879, 'dui maecenas tristique est et tempus semper est', 'Est.gif', 49, 1),
       (50, 'eu sapien cursus', 987, 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'EuMagna.gif', 50, 2),
       (51, 'scelerisque mauris sit amet', 637, 'accumsan tortor quis turpis sed ante', 'Nunc.avi', 51, 1),
       (52, 'semper rutrum', 23, 'velit vivamus vel nulla eget', 'InPorttitorPede.mp3', 52, 2),
       (53, 'quam sollicitudin vitae consectetuer', 1576, 'pede ullamcorper augue a suscipit nulla', 'EgetElit.xls', 53, 3),
       (54, 'lorem quisque ut erat', 350, 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'ErosViverra.mp3', 54, 4),
       (55, 'vivamus vestibulum sagittis sapien', 1101, 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien', 'Curabitur.png', 55, 1),
       (56, 'nulla ac enim', 925, 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 'DolorSitAmet.avi', 56, 2),
       (57, 'lectus pellentesque at', 130, 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 'ConvallisDuisConsequat.png', 57, 4),
       (58, 'nunc proin', 612, 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', 'Quam.tiff', 58, 3),
       (59, 'phasellus sit amet erat', 484, 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'AliquetMassaId.avi', 59, 2),
       (60, 'proin leo', 1361, 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 'Congue.ppt', 60, 1),
       (61, 'erat quisque erat eros', 1436, 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', 'LoremIdLigula.ppt', 61, 1),
       (62, 'scelerisque quam turpis adipiscing', 966, 'consequat lectus in est risus auctor', 'Sed.mp3', 62, 2),
       (63, 'diam vitae', 1523, 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'ConvallisNulla.mov', 63, 3),
       (64, 'posuere cubilia curae nulla', 278, 'vitae mattis nibh ligula nec', 'AnteIpsum.ppt', 64, 4),
       (65, 'pellentesque quisque porta', 1103, 'commodo placerat praesent blandit nam', 'Eget.ppt', 65, 1),
       (66, 'pellentesque ultrices', 327, 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', 'DonecOdioJusto.mp3', 66, 3),
       (67, 'varius ut', 1620, 'semper sapien a libero nam dui proin leo odio porttitor id', 'NislNuncRhoncus.tiff', 67, 1),
       (68, 'adipiscing elit', 1757, 'congue elementum in hac habitasse platea dictumst morbi', 'DonecVitae.xls', 68, 2),
       (69, 'ante vivamus tortor duis', 887, 'lacus morbi sem mauris laoreet ut', 'IntegerPedeJusto.tiff', 69, 4),
       (70, 'interdum venenatis turpis', 829, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', 'ArcuSedAugue.xls', 70, 1),
       (71, 'pulvinar nulla pede ullamcorper', 70, 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', 'MiPede.xls', 71, 1),
       (72, 'ac est lacinia', 869, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 'NonLigulaPellentesque.xls', 72, 2),
       (73, 'ligula sit amet eleifend', 851, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', 'MassaQuis.ppt', 73, 3),
       (74, 'cum sociis natoque penatibus', 1014, 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 'TellusNullaUt.mov', 74, 4),
       (75, 'faucibus orci', 1707, 'lorem ipsum dolor sit amet consectetuer adipiscing', 'MaurisLaoreetUt.ppt', 75, 4),
       (76, 'ut rhoncus aliquet pulvinar', 1419, 'eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', 'Justo.gif', 76, 3),
       (77, 'maecenas tristique est', 1421, 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 'Ultrices.jpeg', 77, 2),
       (78, 'elementum eu', 1623, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', 'RhoncusSedVestibulum.mp3', 78, 1),
       (79, 'cras mi pede', 1650, 'fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', 'Faucibus.doc', 79, 2),
       (80, 'vel nisl', 1150, 'congue eget semper rutrum nulla nunc purus phasellus in', 'AcEnimIn.gif', 80, 3),
       (81, 'scelerisque mauris', 1385, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 'LaciniaAenean.xls', 81, 1),
       (82, 'odio curabitur convallis', 47, 'faucibus accumsan odio curabitur convallis', 'PedeLiberoQuis.mov', 82, 2),
       (83, 'consequat morbi a', 1133, 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 'FermentumDonec.tiff', 83, 3),
       (84, 'in felis eu', 1361, 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna', 'BlanditLacinia.ppt', 84, 4),
       (85, 'amet sapien dignissim', 1919, 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', 'AtIpsum.mov', 85, 2),
       (86, 'nulla ultrices', 1574, 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'Fringilla.pdf', 86, 1),
       (87, 'vel dapibus at', 1273, 'at nibh in hac habitasse', 'Nulla.jpeg', 87, 2),
       (88, 'sapien ut nunc vestibulum', 1753, 'dictumst morbi vestibulum velit id pretium', 'AcTellusSemper.png', 88, 3),
       (89, 'auctor gravida sem praesent', 1096, 'in consequat ut nulla sed accumsan felis ut at dolor', 'Nullam.xls', 89, 3),
       (90, 'pulvinar lobortis', 992, 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 'LuctusUltriciesEu.mp3', 90, 4),
       (91, 'vehicula condimentum curabitur in', 705, 'quisque arcu libero rutrum ac lobortis', 'InFaucibusOrci.avi', 91, 1),
       (92, 'lobortis vel dapibus at', 331, 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 'Orci.doc', 92, 2),
       (93, 'nisi volutpat', 1125, 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', 'EgetVulputateUt.gif', 93, 3),
       (94, 'vel accumsan', 722, 'integer non velit donec diam neque vestibulum eget vulputate ut', 'JustoSit.jpeg', 94, 4),
       (95, 'risus auctor sed tristique', 109, 'donec posuere metus vitae ipsum aliquam non', 'IpsumInteger.xls', 95, 1),
       (96, 'curabitur gravida nisi at', 82, 'nulla elit ac nulla sed vel enim sit', 'IpsumPrimisIn.mp3', 96, 2),
       (97, 'est phasellus sit', 1304, 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', 'RutrumAtLorem.avi', 97, 3),
       (98, 'vel ipsum praesent blandit', 1037, 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', 'EratEros.gif', 98, 4),
       (99, 'in sagittis dui vel', 31, 'lectus in quam fringilla rhoncus mauris enim leo', 'InQuis.gif', 99, 4),
       (100, 'nibh fusce lacus', 1122, 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'FusceCongue.pdf', 100, 3),
       (101, 'elit ac nulla', 704, 'luctus tincidunt nulla mollis molestie lorem quisque ut', 'Phasellus.avi', 1, 1),
       (102, 'cras pellentesque', 131, 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'OdioDonecVitae.tiff', 2, 2),
       (103, 'libero ut massa', 1076, 'non mattis pulvinar nulla pede ullamcorper augue a suscipit', 'Aliquam.tiff', 3, 3),
       (104, 'fusce posuere felis', 344, 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'LectusInQuam.txt', 4, 4),
       (105, 'tempus sit', 1792, 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'TinciduntEgetTempus.ppt', 5, 3),
       (106, 'justo aliquam quis', 713, 'phasellus in felis donec semper', 'LeoRhoncus.mp3', 6, 1),
       (107, 'purus phasellus', 1407, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', 'Mattis.jpeg', 7, 3),
       (108, 'augue aliquam erat', 1114, 'orci mauris lacinia sapien quis libero nullam sit', 'AliquetPulvinar.doc', 8, 2),
       (109, 'sit amet diam in', 751, 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', 'VestibulumAliquet.ppt', 9, 2),
       (110, 'justo maecenas', 1284, 'mattis pulvinar nulla pede ullamcorper augue a suscipit', 'VehiculaConsequat.png', 10, 1),
       (111, 'dui nec nisi', 1569, 'proin at turpis a pede posuere', 'NullaTempus.mov', 11, 1),
       (112, 'tempor turpis nec euismod', 875, 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'Enim.avi', 12, 2),
       (113, 'at velit eu', 593, 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', 'UtNullaSed.jpeg', 13, 3),
       (114, 'sit amet', 1097, 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', 'Nunc.jpeg', 14, 4);

-- Select all distinct values from the 'Price' column in the table 'Products'

 select distinct price 
 from products;

-- Select all from the 'Products' table and order the 'Price' column in ascending order.

select * from products
order by price;

-- Select all from the 'Products' table and order the 'Price' column in descending order.

select * from products
order by price DESC;

-- Select all from the 'Products' table with price between 100 and 1000.

select * from products
where price between 100 and 1000
order by price desc;

-- Select all values from 'Products' that are in stock   

select * from products
where stock is NOT 0;

-- Select all values from 'Products' that are in stock  and with price higher then 1000

select * from products
where stock is NOT 0 and price > 1000;


-- Select average price of all products in stock

select avg (price)
from products
where stock is not 0;

-- Show average price of products in the 'Men' category

select avg(price)
from products
inner join categories
on products.categoryId = categories.categoryId
where categories.name = 'Men';

-- Show all products in the 'Woman' category

select products.name, description
from products
join categories
on products.categoryId = categories.categoryId;

-- Show quantity of products in the TV category

select count(productId)
from products
join categories
on products.categoryId = categories.categoryId;

-- Select users from Paris

select * from users
where city = 'Paris';
-- Add new users to the table 'Users'

insert into users (userId, password, email,firstName, lastName, address1, zipcode, city, state, country, phone)
values (3, '123456789QW', 'test1@gmail.com', 'Julia', 'Vo', '14 Tree Street 91', '06064', 'Chicago', 'Illinois', 'USA', '1234567892'),
       (4, '1234QW', 'test2@gmail.com', 'Jhon', 'Vozniak', 'St.Peter 123', '77494', 'Katy', 'Texas', 'USA', '987654321');
-- Make sure that users are added

      select * from users;
-- Change password value for all users

update users 
set password = '12345';

-- Make sure that passwords are changed

select * from users;

-- Select products in the cart

select * from cart;

-- Add 5 products to the cart

insert into cart (userId, productId)
values (3, 100),
	   (3, 67),
	   (3,20),
	   (4, 100),
	   (4, 87);  
	  
-- Select all information about user #3 and products that were added to the cart by him
	  
	select firstName, lastName, address1, city, zipcode, state, country, phone, products.name, price
	from users 
	inner join cart 
	on cart.userId = users.userId
	join products
	on cart.productId = products.productId
    where users.userId = 3;
   
-- Delete from the cart products added by user #3 with a price higher than 1500.
  
 delete from cart
   where userID = 3 and productId = (
   select products.productId
   from products
   join cart
   on products.productId = cart.productId
   where price >1500);
    
 -- Create a new product category
  
  insert into categories (categoryId, name)
  values (5, 'Children');
 
 -- Add all products with 'test' in the name to the 'Children' category 
 
 update products 
 set categoryId = 5
 where name like 'test%';
	



     
     





