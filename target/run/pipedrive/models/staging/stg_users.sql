
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_users`
      
    
    

    OPTIONS()
    as (
      /* Table: users */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'users' */
    id,
    name,
    default_currency,
    timezone_name,
    timezone_offset,
    locale,
    email,
    created,
    modified,
    lang,
    active_flag,
    is_admin,
    last_login,
    signup_flow_variation,
    role_id,
    has_created_company,
    is_you,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`users`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  