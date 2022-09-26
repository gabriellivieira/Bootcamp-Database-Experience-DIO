-- criação do BD para cenário de Ordem de Serviço para oficina

create database ordem_service;

use ordem_service;

-- Create table Cliente
create table Clients(
	IdClient INT auto_increment primary key,
	CPF CHAR(9) not null,
    Contat VARCHAR(15) not null,
    constraint unique_cpf_Clients unique (CPF)
);

-- Create table Mecânico
create table Mechanic(
	IdMechanic INT auto_increment primary key,
	Code_Mechanic CHAR(5) not null,
    Specialty VARCHAR(15),
    constraint unique_CodeMechanic_Mechanic unique (Code_Mechanic)
);

-- Create table Pessoa
create table Person(
	IdPerson INT auto_increment primary key,
	Complet_Name VARCHAR(45) not null,
    Address VARCHAR(60),
    IdMechanic_Person INT,
    IdClient_Person INT,
    constraint fk_Mechanic_Person Foreign key (IdMechanic_Person) references Mechanic(IdMechanic),
    constraint fk_Client_Person Foreign key (IdClient_Person) references Clients(IdClient)
);

-- Create table Equipe Mecânico
create table Mechanic_Team(
	IdMechanic_Team INT auto_increment primary key,
    IdMechanic INT,
    constraint fk_Mechanic_MechanicTeam Foreign key (IdMechanic) references Mechanic(IdMechanic)
);

-- Create table Pedido
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