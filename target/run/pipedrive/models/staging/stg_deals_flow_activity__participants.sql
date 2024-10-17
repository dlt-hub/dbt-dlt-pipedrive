
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_activity__participants`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_flow_activity__participants */
/* Parent: { parent }} */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_activity`

SELECT
/* select which columns will be available for table 'deals_flow_activity__participants' */
    person_id,
    primary_flag,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`deals_flow_activity__participants`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_activity` )
    );
  