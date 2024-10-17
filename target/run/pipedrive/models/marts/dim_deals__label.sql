
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals__label`
      
    
    

    OPTIONS()
    as (
      /* Table: deals__label */
/* Parent: deals */

SELECT
    t.value,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals__label` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  