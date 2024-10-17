/* Table: leads */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.title,
    t.owner_id,
    t.creator_id,
    t.person_id,
    t.is_archived,
    t.source_name,
    t.origin,
    t.was_seen,
    t.add_time,
    t.update_time,
    t.visible_to,
    t.cc_email,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_leads') }} as t