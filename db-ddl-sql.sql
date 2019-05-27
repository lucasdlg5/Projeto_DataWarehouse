--drop database bike_factory;

create database bike_factory;
use bike_factory;

create table tbl_address (
	ads_id int primary key identity,
    ads_street_name varchar(100),
    ads_number varchar(20),
    ads_neighborhood varchar(150),
    ads_city varchar(150),
    ads_state varchar(150)
);

create table tbl_person (
	prs_id int primary key identity,
    prs_name varchar(200),
    prs_cpf varchar(9) NOT NULL UNIQUE,
    prs_telephone varchar(10),
    
    ads_id int foreign key references tbl_address (ads_id)
);

create table tbl_client (
	cli_id int primary key identity,
    
    prs_id int foreign key references tbl_person (prs_id)
);
create table tbl_employee (
	emp_id int primary key identity,
    emp_role varchar(150),

	prs_id int foreign key references tbl_person (prs_id)
);
create table tbl_order (
    ord_id int primary key identity,
    ord_timestamp_sale timestamp,
    ord_value_sale numeric(8,2),

    cli_id int foreign key references tbl_client (cli_id),
    emp_id int foreign key references tbl_employee (emp_id),
);
create table tbl_product_model (
    mod_id int primary key identity,
    mod_description text,
    mod_name varchar(100)
); 
create table tbl_product (
    prod_id int primary key identity,
    prod_name varchar(150),
    prod_color varchar(100),

    mod_id int foreign key references tbl_product_model (mod_id)
);
create table tbl_cart (
    crt_id int primary key identity,

    ord_id int foreign key references tbl_order (ord_id),
    prod_id int foreign key references tbl_product (prod_id)
);