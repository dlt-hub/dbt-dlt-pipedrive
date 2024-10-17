
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_activities`
      
    
    

    OPTIONS()
    as (
      /* Table: activities */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'activities' */
    id,
    company_id,
    user_id,
    done,
    type,
    due_date,
    due_time,
    duration,
    busy_flag,
    add_time,
    marked_as_done_time,
    subject,
    public_description,
    org_id,
    person_id,
    deal_id,
    active_flag,
    update_time,
    private,
    created_by_user_id,
    org_name,
    person_name,
    deal_title,
    owner_name,
    person_dropbox_bcc,
    deal_dropbox_bcc,
    assigned_to_user_id,
    type_name,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`activities`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  