/* Table: persons__multiple_options */
/* Parent: { parent }} */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_persons`

SELECT
/* select which columns will be available for table 'persons__multiple_options' */
    value,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`persons__multiple_options`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_persons` )