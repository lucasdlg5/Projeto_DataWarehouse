drop database bike_factory;

create database bike_factory;
use bike_factory;

create database tbl_address (
	ads_id int primary key auto_increment,
    ads_street_name varchar(100),
    ads_number varchar(20),
    ads_neighborhood varchar(150),
    ads_city varchar(150),
    ads_state varchar(150
);

create table tbl_person (
	prs_id,
    prs_name,
    prs_cpf,
    prs_telephone,
    
    ads_id
);

create table tbl_client (
	cli_id,
    
    prs_id
);
create table tbl_employee (
	emp_id,
    emp_city_sale,

	prs_id
);
create table tbl_order ();
create table tbl_product ();
create table tbl_product_model (); 