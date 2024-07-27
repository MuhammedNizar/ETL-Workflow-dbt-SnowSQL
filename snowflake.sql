-- Use the accountadmin role
use role accountadmin;

-- Create warehouse, database, and role
create warehouse retail_wh with warehouse_size='x-small';
create database if not exists retail_db;
create role if not exists retail_role;

-- Grant necessary privileges
grant role retail_role to user your_username;
grant usage on warehouse retail_wh to role retail_role;
grant all on database retail_db to role retail_role;

-- Use the retail role
use role retail_role;

-- Create schema
create schema if not exists retail_db.retail_schema;

-- Cleanup commands
use role accountadmin;
drop warehouse if exists retail_wh;
drop database if exists retail_db;
drop role if exists retail_role;
