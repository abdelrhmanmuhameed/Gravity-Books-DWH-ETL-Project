-------------------1-------------------------
create table Dim_Book
		([Pk_book SK] int IDENTITY(1,1) PRIMARY KEY
      ,[Book_bk] int
      ,[title] varchar(400)
      ,[isbn13] varchar(13)
      ,[num_pages] int
      ,[publication_date] date
      ,[Auther_BK] int
      ,[Auther_Name] varchar(400)
      ,[Publisher_BK] int
      ,[Publisher_Name] nvarchar(1000)
      ,[Language_BK] int
      ,[Language_code] varchar(8)
      ,[Language_name] varchar(50)
      ,[source_system_codee] int
      ,[start_datee] date 
      ,[end_datee] date
      ,[is_currente] bit
	  )

----------------2------------------------

create table Dim_customer (
	   [PK_Customer SK] int identity (1,1) PRIMARY KEY
      ,[Customer_BK] int 
      ,[FName] varchar(200)
      ,[LName] varchar(200)
      ,[Email] varchar(350)
      ,[Status_BK] int
      ,[Address_Status] varchar(30)
      ,[Address_BK] int
      ,[Street_Num] varchar(10)
      ,[Street_Name] varchar(200)
      ,[City] varchar(100)
      ,[Country_BK] int
      ,[Country_Name] varchar(200)
      ,[source_system_codee] int
      ,[start_datee] date 
      ,[end_datee] date
      ,[is_currente] bit 
	  )

	---------------3----------------------
	create table Dim_Shipping (
	 [PK_Method SK] int identity (1,1) Primary key
      ,[Method_BK] int
      ,[Method_Name] varchar(100)
      ,[Cost] decimal(6, 2)
      ,[source_system_codee] int
      ,[start_datee] date 
      ,[end_datee] date
      ,[is_currente] bit 
	  )
	  ----------------------------4-------------
	  create table Fact_order_history (
	PK_OrderHistory int IDENTITY(1,1) PRIMARY KEY,
	OrderID_BK int , 
	Status1Date_FK int,
	Status2Date_FK int,
	Status3Date_FK int,
	Status4Date_FK int,
	Status5Date_FK int,
	Status6Date_FK int
	)
	-----------------5--------------------
	create table Fact_Sales (
	   [Fact_Sales_PK SK] int identity (1,1) Primary key 
      ,[Book_FK] int
      ,[Date_FK] int
      ,[Time_FK] int
      ,[Customer_FK] int
      ,[Shipping_FK] int
      ,[Total_Price] decimal(5, 2)
      ,[Source_System_Code] int
      ,[Created_at] date 
	  )


	  ------------6---------------
	  create table control_FactSales_ETL
(id int primary key
,last_load_date datetime)