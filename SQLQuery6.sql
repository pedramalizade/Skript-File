--2--------------------------------------------------
select name, price from Products where Price > 500 ;
--3-------------------------------------------------
select O.OrderDate, sum(O.TotalAmount) as TotalAmount from Orders o 
group by O.OrderDate
--4-------------------------------------------------
select O.ProductId, sum(O.TotalAmount) as TotalAmount from Orders o 
group by O.ProductId
--5-------------------------------------------------
select name, price from Products
order by price DESC
--6-------------------------------------------------
select O.CustomerId, sum(O.ProductId) as NumberOfOrders from Orders o 
group by O.CustomerId
--7-------------------------------------------------
select c.Name, AVG (p.price) as productPrice from Products p 
join Categories c on c.Id = p.CategoryId 
group by c.Name
--8-------------------------------------------------
select name, CategoryId from Products
order by name DESC
--9-------------------------------------------------
select  Year((O.OrderDate)) as  Year, sum(O.TotalAmount) as TotalAmount, sum(c.Id) as CategorieId from Orders o , Categories c
group by O.OrderDate
--10-------------------------------------------------
select Month((O.OrderDate)) as Month, count(O.TotalAmount) as Product
from Orders O
group by Month((O.OrderDate))
--11-------------------------------------------------
select O.CustomerId, sum(O.TotalAmount) as TotalAmount from Orders o 
group by O.CustomerId
--12-------------------------------------------------
select c.Name, count (O.Id) as OrderCount from Orders o 
join Products p on p.Id = o.ProductId
join Categories c on c.Id = p.CategoryId
group by c.Name
--13-------------------------------------------------
select c.Name, count(p.Id) as ProductCount from Products p
join Customers c on c.Id = p.Id
group by c.Name
--14-------------------------------------------------
select Year((O.OrderDate)) as Year, count(O.ProductId) as Product
from Orders O
group by Year((O.OrderDate))
--15-------------------------------------------------
select p.Name, count(c.Id) as CustomerCount from Customers c
join Products p on p.Id = c.Id
group by p.Name

