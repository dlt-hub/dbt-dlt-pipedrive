/* Table: custom_fields_mapping */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'custom_fields_mapping' */
    options,
    endpoint,
    hash_string,
    name,
    normalized_name,
    field_type,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'custom_fields_mapping') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )