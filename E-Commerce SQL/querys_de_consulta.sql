use ecommerce;

select * from client;

select count(*) from client;

select * from client c, orders o where c.idClient = idOrderClient;

select concat(firstName, ' ', lastName) as Name, idOrders, orderStatus from client c, orders o where c.idClient = idOrderClient;

select * from client c left outer join orders on c.idClient = idOrderClient;

select * from product;

select * from orders;

select * from productseller;

select * from productseller pc inner join product p  on pc.idProduct = p.idProduct inner join seller s on pc.idproductSeller = s.idSeller;


select * from client c inner join orders o ON c.idClient = o.idOrderClient inner join productOrder p on p.idPOorder = o.idOrders;
