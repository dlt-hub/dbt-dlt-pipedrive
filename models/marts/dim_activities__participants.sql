/* Table: activities__participants */
/* Parent: activities */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.person_id,
    t.primary_flag,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_activities__participants') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_activities') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)