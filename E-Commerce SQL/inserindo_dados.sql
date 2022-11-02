use ecommerce;

insert into client(firstName, lastName, CPF, address)
values("Siezoto", "Funtarke", 46809346031, "780 Betty Freeway Apt. 342 - Burlington, NC / 62022"),
("Gokas", "Uriwey", 67292664067, "408 Botsford Isle Apt. 392 - Owensboro, GA / 911672"),
("Tiborn", "Kurke", 78156367057, "58970 Noel Highway Apt. 488 - Lancaster, SC / 15070"),
("Istey", "Foxeykral", 45971536087, "797 Susanna Lake Suite 201 - Biloxi, CO / 24267"),
("Hallas", "Gonuta", 02064271074, "13180 Sauer Corners Apt. 554 - Cranston, OR / 63450"),
("Surim", "Azfe", 69842725057, "860 Jacey Falls Suite 410 - Philadelphia, KS / 27932"),
("Azfe", "Magcae", 46399420016, "8002 Bruen Mall Apt. 615 - Council Bluffs, OR / 91932");

insert into product(productName, category, productValue, address)
values("Computador I5","Eletronicos","2000","13718 Ofelia Square Suite 679 - Fort Lauderdale, WV / 61980"),
	("Celular LG","Eletronicos","1200","13718 Ofelia Square Suite 679 - Fort Lauderdale, WV / 61980"),
	("Calculadora I5","Eletronicos","38","13718 Ofelia Square Suite 679 - Fort Lauderdale, WV / 61980"),
	("Ursinho","Brinquedos","125","000 Jalon Isle Apt. 967 - Coeur d'Alene, FL / 62950"),
	("Carro","Brinquedos","12","000 Jalon Isle Apt. 967 - Coeur d'Alene, FL / 62950"),
	("Malbec","Perfumária","120","13718 Ofelia Square Suite 679 - Fort Lauderdale, WV / 61980"),
	("212","Perfumária","350","13718 Ofelia Square Suite 679 - Fort Lauderdale, WV / 61980"),
	("Bala de goma","Alimentos","35","17024 Parker Shoals Apt. 077 - Anchorage, SC / 76028"),
	("Chocolate fino 1KG","Alimentos","50","17024 Parker Shoals Apt. 077 - Anchorage, SC / 76028");

insert into orders(idOrderClient,orderStatus,orderDescription,shippingValue)
values("1","Confirmado",null,null),
("2","Confirmado","Pedido realizado no APP",null),
("3","Confirmado",null,null),
("4","Cancelado",null,50),
("5","Confirmado",null,null),
("6","Confirmado",null,null),
("7","Confirmado",null,null);

insert into productOrder(idPOproduct, idPOorder, poQuantity, poStatus)
values("7","1","1",null),
("6","2","10",null),
("5","3","15",null),
("4","4","1",null),
("3","5","100",null),
("2","6","10",null),
("1","7","2",null);

insert into productStock(address, quantity)
values("São Paulo", 1000),
("São Paulo", 2000),
("São Paulo", 1000),
("São Paulo", 3000),
("São Paulo", 1000),
("São Paulo", 4000),
("São Paulo", 500);

insert into supplier(socialName, CNPJ, contact)
values("Brasil Co","39928161000185","5539111281"),
("Vendas SA","91750628000160","553132456"),
("Comercio BR","09780218000180","553645987"),
("Ind SA","49217116000176","557894658"),
("brasil e Mundo","28079763000199","553989796");


insert into productSupplier(idPsSupplier, idPsProduct, quantity)
values(1, 1, 200),
(2, 2, 200),
(3, 3, 300),
(4, 4, 200),
(5, 5, 300),
(1, 6, 200),
(2, 7, 500);


insert into seller(socialName, CPF, CNPJ, contact, address)
values("Boutique",63396431081,null,"1133389585","BA"),
("Jonelson De tudo",48027630002,null,"987897465","SP"),
("1001 Coisas",null,35004856000110,"8794987455","RJ"),
("Imports",76230682028,null,"98749585","SP"),
("De Muito a Tudo",47248764094,null,"978654132","SC"),
("Alem do Basico",null,83262832000103,"1325964585","RS"),
("Novos e Usados",65415477004,null,"9874651218","PR");

insert into productSeller(idProductSeller, idProduct, productQuantity)
values("1","1","200"),
("2","2","200"),
("3","3","200"),
("4","4","200"),
("5","5","200"),
("6","6","200"),
("7","7","200");

insert into storagelocation(idLproduct, idLstorage, location)
values(1,1, "SP"),
(2,2, "SP"),
(3,3, "SP"),
(4,4, "SP"),
(5,5, "SP"),
(6,6, "SP"),
(7,7, "SP");