
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_deal_change`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_flow_deal_change */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'deals_flow_deal_change' */
    id,
    item_id,
    user_id,
    field_key,
    old_value,
    new_value,
    log_time,
    change_source,
    change_source_user_agent,
    additional_data__old_value_formatted,
    additional_data__new_value_formatted,
    timestamp,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`deals_flow_deal_change`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  