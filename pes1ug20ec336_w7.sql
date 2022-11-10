select C.Cust_ID,C.FName,C.LName,C.Address,I.Date,B.Make,B.Model from customer C,Invoice I,Bike B where C.Cust_id = I.Cust_ID and B.VIN = I.VIN and C.address = 'Bangalore' and YEAR(I.Date) >= 2020 UNION
select C.Cust_ID,C.FName,C.LName,C.address,I.Date,B.Make,B.Model from customer C,Invoice I,Bike B where C.Cust_id = I.Cust_ID and B.VIN = I.VIN and C.address = 'Chennai' and YEAR(I.Date) < 2020;

(select * from customer where address in ('Chennai','Kerala')) Intersect (select * from customer where Lname in (select Lname from customer group by Lname having count(*)>1));

select Model from Bike join invoice on bike.VIN = invoice.VIN join customer on invoice.cust_id = customer.cust_id where customer.address in ('Bangalore','Chennai');

select * from customer C1 where C1.address = 'Chennai' AND NOT EXISTS ( select * from customer C2 where C2.address ='Kerala'and C2.LName = C1.LName);

select * from service_ticket where year(date_del)<2022;