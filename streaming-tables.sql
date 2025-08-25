-- Databricks notebook source
create or replace streaming table dev.bronze.deliveries_st
as 
select * from stream read_files (
  '/Volumes/dev/bronze/csv/deliveries/',
  format => 'csv'
)

-- COMMAND ----------

refresh streaming table dev.bronze.deliveries_st

-- COMMAND ----------


