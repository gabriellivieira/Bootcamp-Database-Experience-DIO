-- Queries

select * from Mechanic;

-- Consultando a especialidades dos times trabalhando nos pedidos, ordenados pelo id do time de mecânicos
select m.Specialty, t.IdMechanic_Team, o.IdOrder
	from Mechanic m INNER JOIN Mechanic_Team t
    on m.IdMechanic = t.IdMechanic
    INNER JOIN Orders o
    on t.IdMechanic_Team = o.IdMechanicTeam_Order
    order by t.IdMechanic_Team;
    
-- número de pedidos para o serviço 'motor'.    
Select distinct count(*) as Pedidos, IdClient from Orders, Clients
	where Description_Order = 'motor';
    
    
