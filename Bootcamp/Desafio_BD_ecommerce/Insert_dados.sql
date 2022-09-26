-- Incluindo valores do BD E-commerce

use ecommerce;

-- Insert Physical_person
Insert into Physical_person (Complet_name, CPF)
		Values ('Gabrielli Vieira', 159263487),
			   ('Sandro Matheus Ramos', 123456789),
               ('Adrielli Vieira', 789456123),
               ('Alisson Rodrigues', 147258036),
               ('Sandra Telles', 753420196),
               ('Luana Hara', 456789120),
               ('Fabio de Souza', 852410697);

-- Insert Legal_person
Insert into Legal_person (Social_name, Fantasy_name, CNPJ)
		Values ('Rebeca e Victor Eletrônica Ltda', 'RV Eletrônica', 37765580000118),
			('Murilo Eletrônica Associados ME', 'Murilo Eletrônica', 87922440000184),
            ('Julio e Helena Eletrônica Ltda', 'Julio Eletrônica', 31564329000109),
            ('Débora e Osvaldo Eletrônica Ltda', 'D O Eletrônica', 64200080000101),
            ('Silvana e Jéssica Eletrônica ME', 'S & J Eletrônica', 95925670000125),
            ('Lorenzo e Severino Eletrônica ME', 'Lorenzo Eletrônica', 01706670000190),
            ('Guilherme e Marlene Eletrônica Ltda', 'Guilherme Eletrônica', 56821308000152);



-- Insert Client_Type
Insert into Client_Type (IdPhysicalPerson_Type, IdLegalPerson_Type, IdType_Client)
		Values (1, 1, 1),
			(2, 2, 2),
            (3, 3, 3),
            (4, 4, 4),
            (5, 5, 5),
            (6, 6, 6),
            (7, 7, 7);
            
        
-- Insert Clients
Insert into Clients (Address)
		Values ('Rua janeiro 52, Bairro Centro, Cascavel-PR'),
			('Rua fevereiro 12, Bairro Centro, Cascavel-PR'),
            ('Rua marco 652, Bairro Canceli, Cascavel-PR'),
            ('Rua abril 320, Bairro Canceli, Cascavel-PR'),
            ('Rua maio 415, Bairro Canceli, Cascavel-PR'),
            ('Rua junho 526, Bairro Parque Verde, Cascavel-PR'),
            ('Rua julho 589, Bairro Parque Verde, Cascavel-PR');
                


-- Insert Credit_card
Insert into Credit_card (identification, Credit_number, Expiration_date, IdCreditClient)
		Values ('GabrielliVieira',1592634877894563, '2025-05-03', 1),
			   ('Sandro Matheus Ramos', 1234567891234568, '2026-06-12', 2),
               ('Adrielli Vieira', 7894561239632500, '2023-08-14', 3),
               ('Alisson Rodrigues', 1472580369874521, '2030-10-02', 4),
               ('Sandra Telles', 7534201961234575, '2026-05-06', 5),
               ('Luana Hara', 4567891209630024, '2027-11-05', 6),
               ('Sandra Telles', 7534201961234502, '2026-05-025', 5),
               ('Luana Hara', 4567891209630071, '2027-10-30', 6),
               ('Fabio de Souza', 8524106975201487, '2024-12-24', 7);

-- Insert Pedido
Insert into Orders (Status_Order, Description_Order, freight, IdOrder_Client, IdOrder_Delivery, IdOrder_FormPayment)
		Values ('Em andamento', 'Notbook Acer', 45, 1, 1, 1),
			('Processando', 'Notbook K52', 45, 2, 2, 1),
            ('Entregue', 'HeadPhone Asus', 45, 3, 3, 1),
            ('Entregue', 'Notbook K52', 45, 4, 4, 1),
            ('Enviado', 'HeadPhone Asus', 45, 5, 5, 1),
            ('Em andamento', 'Mouse Hyper', 45, 6, 6, 1),
            ('Enviado', 'Mouse Hyper', 45, 7, 7, 1);
       
Status_Order ENUM('Processando', 'Em andamento', 'Enviado', 'Entregue') default 'Processando',
        Description_Order VARCHAR(45),
        freight FLOAT,
        IdOrder_Client INT,
        IdOrder_Delivery INT,
        IdOrder_FormPayment

-- Insert tabela Entrega
Insert into Delivery (Status_delivery, Tracking_code)
		Values ('Em andamento', 1230258),
			('Processando', 1230245),
            ('Entregue', 12302632),
            ('Entregue', 1230852),
            ('Enviado', 1230014),
            ('Em andamento', 1230785),
            ('Enviado', 1230964);

-- Insert Forma de Pagamento
Insert into Form_payment (Credit_Card, PIX, Boleto)
		Values (1985149283340134439, 123456, 7534201);
        

-- Insert Produto
insert into Product (Category, Description_Product, Value_Product)
		Values ('Eletronico', 'Notbook Acer', 5500),
			('Eletronico', 'Notbook K52', 7300),
            ('Eletronico', 'HeadPhone Asus', 2400),
            ('Eletronico', 'Mouse Hyper', 670);

-- Insert  Relação de Produto_por_Pedido
insert into Product_Order (IdProduct_ProductOrder, IdOrder_ProductOrder, Quantity)
		Values (1, 1, 3),
			(2, 2, 1),
            (3, 3, 2),
            (3, 4, 1),
            (2, 5, 3),
            (4, 6, 3),
            (4, 7, 5);

select * from Orders;

-- Insert Estoque 
insert into Stock (place)
		Values ('Cascavel-PR'),
			('Curitiba-PR'),
			('Foz do iguacu-PR');
            
-- Insert Produto_Estoque
insert into Product_Stock (IdProductStock_Stock, IdProductStock_Product, Quantity_ProductStock, Status_ProductStock)
		Values (1, 1, 50, 'Em estoque'),
			(1, 2, 50, 'Em estoque'),
            (2, 3, 50, 'Em estoque'),
            (3, 4, 0, 'Sem estoque');

-- Insert  Vendedor_Terceiro
insert into Third_seller (SocialName_Seller, CNPJ_Seller, Address_Seller, FantasyName_Seller)
		Values ('Larissa e Nicole Eletronico ME', 30103017000135, 'Rua manga 525, Parque Sao Paulo, Cutitiba-PR', 'L N Eletronic'),
			('Teresinha e Edson Contábil ME', 25714136000194, 'Rua banana 852, Centro, Cascavel-PR', 'T E Eletronic'),
            ('Nathan e Márcio Adega Ltda', 02213455000110, 'Rua melao 963, Centro, Cascavel-PR', 'N M Eletronic'),
            ('Francisco e Flávia Filmagens Ltda', 98169749000161, 'Rua mamao 123, Contry, Curitiba-PR', 'F&F Eletronic');
	
-- Insert  Produto_por_Vendedor
insert into Product_Seller (IdTrirdSeller_ProductSeller, IdProduct_ProductSeller, Quantity)
		Values (1, 1, 55),
			(2, 2, 73),
            (3, 3, 24),
            (4, 3, 67);

-- Insert Fornecedor 
insert into Provider (SocialName_Provider, CNPJ_Provider, Address_Provider, FantasyName_Provider)
		Values ('Theo e Camila Eletronico Ltda', 28836122000131, 'Rua leao 485, Industrial, Curitiba-PR', 'T C Eletronic'),
			('Carolina e Lorenzo Eletronico Ltda', 45027808000109, 'Rua gato 525, Centro, Curitiba-PR', 'C&L Eletronic'),
            ('Luana e Filipe Eletronico Ltda', 59195571000171, 'Rua cachorro 562, Centro, Curitiba-PR', 'L F Eletronic'),
            ('Diogo e Caio Informática Ltda', 67866131000127, 'Rua papagaio 512, Industrial, Curitiba-PR', 'D&C Eletronic');
            
-- Insert Disponibilizando_produto
insert into Product_Available (IdProvider_ProducAvailable, IdProduct_ProducAvailable)
		Values (5, 1),
			(6, 2),
            (7, 3),
            (8, 4);
            
select * from Product_Available;

    
        
	
	