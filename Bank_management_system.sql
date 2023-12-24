create database  BMSDB;
use BMSDB;
show databases;

/*customer personal information--*/
create table customer_personal_information(
customer_id varchar(30),
customer_name varchar(50),
Date_of_birth date,
Guardian_name varchar(30),
contact_no bigint(10),
Mail_id varchar(30),
Gender char(1),
Marital_status varchar(20),
Identification_doc_type varchar(20),
Id_doc_no varchar(20),
citizenship varchar(10),
constraint cust_pk primary key(customer_id));

show tables;

/*customer reference info */
create table customer_reference_info(
customer_id varchar(5),
reference_acc_name varchar(20),
reference_acc_no bigint(16),
reference_acc_address varchar(30),
relation varchar(25),
constraint cust_ref_info_pk primary key (customer_id),
constraint cust_ref_info_pk foreign key (customer_id) references customer_personal_information(customer_id));

show tables;
/*bank info table */
create table bank_info(
IFSC_code varchar(15),
Bank_name varchar(30),
Branch_name varchar(30),
constraint bank_info_pk primary key(IFSC_code)
);

/*account info */
create table account_info(
account_no bigint(16),
customer_id varchar(30),
account_type varchar(20),
registration_date date,
activation_date date,
IFSC_code varchar(15),
interest decimal(7,2),
initial_deposit bigint(10),
constraint account_info_pk primary key(account_no),
constraint accounti_info_personal_fk foreign key(customer_id) references  customer_personal_information(customer_id),
constraint account_info_bank_fk foreign key(IFSC_code) references bank_info(IFSC_code)
);
show tables;

/*bankinfo*/
insert into bank_info(IFSC_code,Bank_name,Branch_name)
values
('punb06342300','pnb','ydc'),
('sbin7357375','sbi','gomtinagar'),
('bobin38475','bob','hajratganj'),
('alaha45836','allahabad','rampur');
select *from bank_info;

insert into account_info(account_no,customer_id,account_type,registration_date,activation_date,IFSC_code,
interest,initial_deposit)
values
(521524842,'adfd5sdf','saving','20-05-2023','25-06-2022','sbin34784','4.6',25000);
(52159642,'adfdvghjf','saving','20-05-2023','25-06-2022','sbin34784','4.6',25000);
(52154842,'adfdertf','current','20-05-2018','25-02-2022','sbin384','4.6',200);


insert into customer_personal_information(customer_id,customer_name,guardian_name)
values
(2652145,'radheshyam','ram_pyaare'),
(6854752,'ramlala','dashrathlaal');

insert into customer_reference_info(customer_id,reference_acc_name,reference_acc_no)
values
('25624425','saving',25124524),
('52156253','curreent',24511241);

