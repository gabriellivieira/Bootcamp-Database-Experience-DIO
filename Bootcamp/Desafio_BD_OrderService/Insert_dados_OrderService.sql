-- Incluindo valores do BD Ordem de Serviço para oficina


-- Insert  Cliente
Insert into Clients (CPF, Contat)
		Values (159263487, 459999-6666),
			   (123456789, 439888-3322),
               (789456123, 459988-6512),
               (147258036, 439998-5522);
	

-- Insert Mecânico
Insert into Mechanic (Code_Mechanic,  Specialty)
		Values (15963, 'motor'),
			   (12378, 'freios'),
               (78945, 'direção'),
               (14712, 'motor');

-- Insert Pessoa
Insert into Person (Complet_Name,  Address, IdMechanic_Person, IdClient_Person)
		Values ('Gabrielli Vieira', 'Rua janeiro 52, Bairro Centro, Cascavel-PR', 1, 1),
			   ('Sandro Matheus Ramos', 'Rua fevereiro 12, Bairro Centro, Cascavel-PR', 2, 2),
               ('Adrielli Vieira', 'Rua marco 652, Bairro Canceli, Cascavel-PR', 3, 1),
               ('Alisson Rodrigues', 'Rua abril 320, Bairro Canceli, Cascavel-PR', 4, 3);
		
-- Insert Equipe Mecânico
Insert into Mechanic_Team (IdMechanic)
		Values (1),
			(2),
            (3),
            (4);

-- Insert table Pedido
Insert into Orders (Description_Order, Data_Order, IdMechanicTeam_Order, IdClient_Order)
		Values ('motor', '2022-08-20', 1, 1),
			('freios', '2022-08-30', 2, 2),
            ('direção', '2022-09-02', 3, 3),
            ('motor', '2022-09-20', 4, 4);
            
 Insert into Orders (Description_Order, Data_Order, IdMechanicTeam_Order, IdClient_Order)
		Values ('motor', '2022-08-05', 1, 1),
			('freios', '2022-08-15', 2, 2),
            ('direção', '2022-09-10', 3, 3),
            ('motor', '2022-09-06', 4, 4);           
        
        
create table Orders(
	IdOrder INT auto_increment primary key,
    Description_Order VARCHAR(45) not null,
    Data_Order DATE not null,
    IdMechanicTeam_Order INT,
    IdClient_Order INT,
    constraint fk_MechanicTeam_Order Foreign key (IdMechanicTeam_Order) references Mechanic(IdMechanic),
    constraint fk_Client_Order Foreign key ( IdClient_Order) references Clients(IdClient)
);

-- Create table Ordem de Serviço
create table Orders_Service(
	IdOrder_Service INT auto_increment primary key,
    Number_Order INT not null,
    IssueDate_Order DATE not null,
    FinishDate_Order DATE not null,
    Status_Order ENUM('Processando', 'Em andamento', 'Entregue') default 'Processando',
    IdOrder_OrdersService INT,
    IdClient_OrdersService INT,
    IdMechanicTeam_OrdersService INT, 
    constraint fk_Order_OrdersService Foreign key (IdOrder_OrdersService) references Orders(IdOrder),
    constraint fk_MechanicTeam_OrdersService Foreign key (IdMechanicTeam_OrdersService) references Mechanic(IdMechanic),
    constraint fk_Client_OrdersService Foreign key ( IdClient_OrdersService) references Clients(IdClient)
);