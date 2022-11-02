create database if not exists ecommerce;
use ecommerce;

create table client( idClient int auto_increment primary key,
					  firstName varchar(15),
                      lastName varchar(15),
                      CPF char(11) not null,
                      address varchar(255),
                      constraint unique_cpf_client unique (CPF)
);

create table product( idProduct int auto_increment primary key,
					productName varchar(255),
                    category enum('Eletronicos', 'Brinquedos', 'Perfumária', 'Alimentos'),
                    productValue float,
                    address varchar(255)
);


create table orders( idOrders int auto_increment primary key,
							idOrderClient int,
                            orderStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
                            orderDescription varchar(255),
                            shippingValue float default 10,
                            constraint fk_orders_client foreign key (idOrderClient) references client(idClient)
);

create table payment(idPaymant int auto_increment primary key,
					idPaymentOrder int,
                    paymentType enum('Cartão de crédito', 'Boleto bancário'),
                    cardNumber varchar(255),
                    cardHolderName varchar (255),
                    expirationCardDate date,
                    cardSecurityCode varchar(255),
                    bankSlipCode varchar(255),
                    paymentConfirmation bool default False,
                    constraint fk_payment_product_order foreign key (idPaymentOrder) references orders(idOrders)
);

create table productStock(idProductStock int auto_increment primary key,
						  address varchar(255),
                          quantity int default 0
);


create table supplier(idSupplier int auto_increment primary key,
						socialName varchar(255),
                        CNPJ char(15),
						contact varchar(12) not null,
                        constraint unique_cnpj_supplier unique (CNPJ)
);


create table seller(idSeller int auto_increment primary key,
						socialName varchar(255),
                        CPF char(11),
                        CNPJ char(15),
						contact varchar(12) not null,
                        address varchar(255),
                        constraint unique_cnpj_seller unique (CNPJ),
                        constraint unique_cpf_seller unique (CPF)
);

  create table productSeller(idProductSeller int,
							 idProduct int,
                             productQuantity int default 1,
                             primary key(idProductSeller, idProduct),
                             constraint fk_product_seller foreign key (idProductSeller) references seller(idSeller),
                             constraint fk_product_product foreign key (idProduct) references product(idProduct)
 );

 create table productOrder( idPOproduct int,
							idPOorder int,
                            poQuantity int default 1,
                            poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
                            primary key(idPOproduct, idPOorder),
							constraint fk_product_orders foreign key (idPOproduct) references product(idProduct),
							constraint fk_orders_product foreign key (idPOorder) references orders(idOrders)
 );



 create table storagelocation( idLproduct int,
							idLstorage int,
                            location varchar(255) not null,
                            primary key(idLproduct, idLstorage),
							constraint fk_product_stock foreign key (idLproduct) references product(idProduct),
							constraint fk_stock_product foreign key (idLstorage) references productStock(idProductStock)
 );


  create table productSupplier( idPsSupplier int,
							idPsProduct int,
                            quantity int not null,
                            primary key(idPsSupplier, idPsProduct),
							constraint fk_supplier_product foreign key (idPsSupplier) references supplier(idSupplier),
							constraint fk_product_supplier foreign key (idPsProduct) references product(idProduct)
 );
