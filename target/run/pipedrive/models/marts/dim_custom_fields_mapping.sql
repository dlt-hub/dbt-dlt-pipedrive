
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_custom_fields_mapping`
      
    
    

    OPTIONS()
    as (
      /* Table: custom_fields_mapping */

SELECT
    t.options,
    t.endpoint,
    t.hash_string,
    t.name,
    t.normalized_name,
    t.field_type,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_custom_fields_mapping` as t
    );
  