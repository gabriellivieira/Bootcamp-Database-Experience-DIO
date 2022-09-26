-- criação do BD para cenário de E-commerce

create database ecommerce;

use ecommerce;

-- create tabela Pessoa Fisica
create table Physical_person(
	IdPhysical_person INT auto_increment primary key,
    Complet_name VARCHAR(45),
	CPF CHAR(9) not null,
    constraint unique_cpf_physical_person unique (CPF)
);

-- create tabela Pessoa Juridica
create table Legal_person(
	IdLegal_person INT auto_increment primary key,
    Social_name VARCHAR(45),
    Fantasy_name VARCHAR(45),
    CNPJ CHAR(9) not null,
    constraint unique_cnpj_legal_person unique (CNPJ)
);

alter table Legal_person modify column cnpj char(14) not null;

-- create tabela Tipo de Cliente
create table Client_Type(
	IdClient_Type INT auto_increment primary key,
    IdPhysicalPerson_Type INT,
    IdLegalPerson_Type INT,
    IdType_Client INT,
    constraint fk_ClientType_Physical Foreign key (IdPhysicalPerson_Type) references Physical_person(IdPhysical_person),
    constraint fk_ClientType_Legal Foreign key (IdLegalPerson_Type) references Legal_person(IdLegal_person),
    constraint fk_ClientType_Client Foreign key (IdType_Client) references Clients(IdClient)
);

-- create tabela Cliente
create table Clients(
	IdClient INT auto_increment primary key,
    Address VARCHAR(55)
);


-- create tablela Cartão de Credito
create table Credit_card(
	IdCredit_card INT auto_increment primary key,
    identification VARCHAR(45) not null,
    Credit_number CHAR(16) not null,
    Expiration_date DATE not null,
    IdCreditClient INT,
    constraint unique_CreditNumber_Credit_card unique (Credit_number),
	constraint fk_CreditCard_Client Foreign key (IdCreditClient) references Clients(IdClient)
);

-- create tabela Pedido
	create table Orders(
		IdOrder INT auto_increment primary key,
        Status_Order ENUM('Processando', 'Em andamento', 'Enviado', 'Entregue') default 'Processando',
        Description_Order VARCHAR(45),
        freight FLOAT,
        IdOrder_Client INT,
        IdOrder_Delivery INT,
        IdOrder_FormPayment INT,
        constraint fk_Order_Client Foreign key (IdOrder_Client) references Clients(IdClient),
        constraint fk_Order_Delivery Foreign key (IdOrder_Delivery) references Delivery(IdDelivery),
		constraint fk_Order_FormPayment Foreign key (IdOrder_FormPayment) references Form_payment(IdForm_payment)
    );

-- create tabela Entrega
	create table Delivery(
		IdDelivery INT auto_increment primary key,
        Status_delivery ENUM('Processando', 'Em andamento', 'Enviado', 'Entregue') not null,
        Tracking_code VARCHAR(16)
    );

-- create tabela Forma de Pagamento
create table Form_payment(
	IdForm_payment INT auto_increment primary key,
    Credit_Card VARCHAR(20),
    PIX VARCHAR(20),
    Boleto VARCHAR(45)
);

-- create tabela Produto
create table Product(
	IdProduct INT auto_increment primary key,
    Category VARCHAR(45) NOT NULL,
	Description_Product VARCHAR(45),
    Value_Product FLOAT
);

-- create tabela Relação de Produto_por_Pedido
create table Product_Order(
	IdProduct_ProductOrder INT,
    IdOrder_ProductOrder INT,
    Quantity INT not null,
	constraint fk_ProductOrder_Product Foreign key (IdProduct_ProductOrder) references Product(IdProduct),
    constraint fk_ProductOrder_Order Foreign key (IdOrder_ProductOrder) references Orders(IdOrder)
);

-- create tabela Estoque 
create table Stock(
	IdStock INT auto_increment primary key,
    Place VARCHAR(45) not null
);

show tables;

-- create tabela Produto_Estoque
create table Product_Stock(
	IdProductStock_Stock INT,
    IdProductStock_Product INT,
    Quantity_ProductStock INT not null,
    Status_ProductStock ENUM('Em estoque', 'Sem estoque'),
    constraint fk_ProductStock_Product Foreign key (IdProductStock_Product) references Product(IdProduct),
    constraint fk_ProductStock_Stock Foreign key (IdProductStock_Stock) references Stock(IdStock)
);

-- create table Vendedor_Terceiro
create table Third_seller(
	IdTrird_Seller INT auto_increment primary key,
    SocialName_Seller VARCHAR(45) not null,
    CNPJ_Seller CHAR(14) not null,
    Address_Seller VARCHAR(45),
    FantasyName_Seller VARCHAR(45),
    constraint unique_cnpj_TrirdSeller unique (CNPJ_Seller)
);

-- create table Produto_por_Vendedor
create table Product_Seller(
	IdTrirdSeller_ProductSeller INT,
    IdProduct_ProductSeller INT,
    Quantity INT not null,
    constraint fk_Product_ProductSeller Foreign key (IdProduct_ProductSeller) references Product(IdProduct),
    constraint fk_TrirdSeller_ProductSeller Foreign key (IdTrirdSeller_ProductSeller) references Third_seller(IdTrird_Seller)
);

-- create table Fornecedor 
create table Provider(
	IdProvider INT auto_increment primary key,
	SocialName_Provider VARCHAR(45) not null,
    CNPJ_Provider CHAR(14) not null,
    Address_Provider VARCHAR(45),
    FantasyName_Provider VARCHAR(45),
    constraint unique_cnpj_Provider unique (CNPJ_Provider)
);

-- create table Disponibilizando_produto
create table Product_Available(
	IdProvider_ProducAvailable INT,
	IdProduct_ProducAvailable INT,
	constraint fk_Product_ProducAvailable Foreign key (IdProduct_ProducAvailable) references Product(IdProduct),
    constraint fk_Provider_ProducAvailable Foreign key (IdProvider_ProducAvailable) references Provider(IdProvider)
);
