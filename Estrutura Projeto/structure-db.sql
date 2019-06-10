create database bikefactory;
use bikefactory;

create table tbl_product (
  pro_id INT PRIMARY KEY IDENTITY,
  pro_name VARCHAR(100),
  pro_color VARCHAR(100),
  pro_model VARCHAR(100),
  pro_description TEXT
);

-- select * from tbl_product;

create table tbl_stock_input_transaction (
  tsc_id INT PRIMARY KEY IDENTITY,
  tsc_product_amount INT,
  tsc_date datetime,

  pro_id INT FOREIGN KEY REFERENCES tbl_product (pro_id)
);

-- SELECT pro_id
-- FROM tbl_stock_input_transaction
-- WHERE tsc_date >= '12/04/2018 12:00:00' AND tsc_date <= '25/05/2019 3:53:04'

create table tbl_address (
	ads_id int primary key identity,
    ads_street_name varchar(100),
    ads_number varchar(20),
    ads_neighborhood varchar(150),
    ads_city varchar(150),
    ads_state varchar(150)
);

-- select * from tbl_address;

create table tbl_employee (
  emp_id INT PRIMARY KEY IDENTITY,
  emp_name VARCHAR(200),
  
  ads_id INT FOREIGN KEY REFERENCES tbl_address (ads_id),
);

-- select * from tbl_employee;

create table tbl_customer (
  cli_id INT PRIMARY KEY IDENTITY,
  cli_name VARCHAR(200),
  cli_cpf VARCHAR(11) UNIQUE,

  ads_id INT FOREIGN KEY REFERENCES tbl_address (ads_id),
);

-- select * from tbl_customer ORDER BY ads_id asc;

create table tbl_order (
    ord_id int primary key identity,
    ord_datetime_sale datetime,
    ord_value_sale numeric(8,2),

    cli_id int foreign key references tbl_customer (cli_id),
    emp_id int foreign key references tbl_employee (emp_id),
);

-- select emp_id from tbl_order ORDER BY emp_id ASC;

create table tbl_cart (
  crt_id INT PRIMARY KEY IDENTITY,
  crt_product_amount INT,

  ord_id int foreign key references tbl_order (ord_id),
  pro_id INT FOREIGN KEY REFERENCES tbl_product (pro_id),
);

-- select * from tbl_cart;