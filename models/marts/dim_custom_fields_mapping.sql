/* Table: custom_fields_mapping */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.options,
    t.endpoint,
    t.hash_string,
    t.name,
    t.normalized_name,
    t.field_type,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_custom_fields_mapping') }} as t