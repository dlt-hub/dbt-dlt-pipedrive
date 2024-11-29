/* Table: deals_flow_deal_change */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.item_id,
    t.user_id,
    t.field_key,
    t.new_value,
    t.log_time,
    t.change_source,
    t.change_source_user_agent,
    t.timestamp,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_deals_flow_deal_change') }} as t