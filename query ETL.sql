-----------dim_book--------------
select b.book_id 
	,b.[title]
	,b.[isbn13]
	,b.[num_pages]
	,b.[publication_date]
	,a.[author_id]
	,a.[author_name]
	,p.[publisher_id]
	,p.[publisher_name]
	,l.[language_id]
	,l.[language_code]
	,l.[language_name]
	from book b left join book_author ba
	on b.book_id = ba.book_id
	left join author a
	on ba.author_id = a.author_id
	left join publisher p
	on p.publisher_id = b.publisher_id
	left join book_language l
	on b.language_id = l.language_id

------------------DIM_customer------------- 


select  
	   c.customer_id
	   ,c.first_name
	   ,c.last_name
	   ,c.email
	   ,s.status_id
	   ,s.address_status
	   ,a.address_id
	   ,a.street_number
	   ,a.street_name
	   ,a.city
	   ,o.country_id
	   ,o.country_name
     from 
	 customer c left join customer_address ca
	 on c.customer_id = ca.customer_id
     left join address_status s
	 on ca.status_id = s.status_id
	 left join address a 
	 on ca.address_id = a.address_id
	 left join country o
	 on o.country_id = a.country_id

	------------factsales_etl------------

	insert into [dbo].[control_FactSales_ETL] 
	values (1,01/01/1900)
	 