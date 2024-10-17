/* Table: products */

SELECT
    t.id,
    t.name,
    t.code,
    t.tax,
    t.active_flag,
    t.selectable,
    t.first_char,
    t.visible_to,
    t.owner_id,
    t.add_time,
    t.update_time,
    t.owner_name,
    t.category,
    t.test_field_1,
    t._dlt_load_id,
    t._dlt_id,
    t.description,
    t.unit,
    t.spam,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_products` as t