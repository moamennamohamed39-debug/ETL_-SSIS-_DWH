create  table meta_control_table(
id int identity(1,1) not null ,
source_table nvarchar(50) not null ,
last_load_date datetime null )

insert into meta_control_table (source_table , last_load_date )
values ('sales order headers' , 1900-01-01)


truncate table fact_sales 
select * from Fact_sales
select * from meta_control_table