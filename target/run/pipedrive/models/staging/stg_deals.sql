
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals`
      
    
    

    OPTIONS()
    as (
      /* Table: deals */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'deals' */
    id,
    creator_user_id,
    user_id,
    person_id,
    org_id,
    stage_id,
    title,
    value,
    currency,
    add_time,
    update_time,
    stage_change_time,
    active,
    deleted,
    status,
    next_activity_date,
    next_activity_id,
    visible_to,
    pipeline_id,
    products_count,
    files_count,
    notes_count,
    followers_count,
    email_messages_count,
    activities_count,
    done_activities_count,
    undone_activities_count,
    participants_count,
    expected_close_date,
    origin,
    stage_order_nr,
    person_name,
    org_name,
    next_activity_subject,
    next_activity_type,
    formatted_value,
    weighted_value,
    formatted_weighted_value,
    weighted_value_currency,
    owner_name,
    cc_email,
    org_hidden,
    person_hidden,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`deals`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  