/* Table: deals_flow_deal_change */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

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
FROM {{ source('raw_data', 'deals_flow_deal_change') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )