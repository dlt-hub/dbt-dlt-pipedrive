
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_custom_fields_mapping`
      
    
    

    OPTIONS()
    as (
      /* Table: custom_fields_mapping */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'custom_fields_mapping' */
    options,
    endpoint,
    hash_string,
    name,
    normalized_name,
    field_type,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`custom_fields_mapping`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  