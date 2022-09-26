-- Queries

-- agrupando cartões de credito por cliente
Select  IdCredit_card, IdCreditClient
from Credit_card
group by IdCreditClient;


select * from Credit_card;

-- Consultando quantos produtos tem em cada local do estoque.
select p.Description_Product, e.Quantity_ProductStock, s.Place
	from Stock s INNER JOIN Product_Stock e
    on s.IdStock = e.IdProductStock_Stock
    INNER JOIN Product p
    on p.IdProduct = e.IdProductStock_Product;
    
-- somando a quantidade de produtos por ordem
Select count(*) as produtos from Product_Order, product
	where IdProduct = IdProduct_ProductOrder;
    
    

select * from product;
    
