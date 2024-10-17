/* Table: deals_flow_deal_change */

SELECT
    t.id,
    t.item_id,
    t.user_id,
    t.field_key,
    t.old_value,
    t.new_value,
    t.log_time,
    t.change_source,
    t.change_source_user_agent,
    t.additional_data__old_value_formatted,
    t.additional_data__new_value_formatted,
    t.timestamp,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_deal_change` as t