
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_activities__participants`
      
    
    

    OPTIONS()
    as (
      /* Table: activities__participants */
/* Parent: { parent }} */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_activities`

SELECT
/* select which columns will be available for table 'activities__participants' */
    person_id,
    primary_flag,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`activities__participants`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_activities` )
    );
  