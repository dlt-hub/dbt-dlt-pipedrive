/* Table: leads */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'leads' */
    id,
    title,
    owner_id,
    creator_id,
    person_id,
    is_archived,
    source_name,
    origin,
    was_seen,
    add_time,
    update_time,
    visible_to,
    cc_email,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`leads`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )