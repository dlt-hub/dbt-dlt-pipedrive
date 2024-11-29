/* Table: notes */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'notes' */
    id,
    user_id,
    deal_id,
    person_id,
    org_id,
    content,
    add_time,
    update_time,
    active_flag,
    pinned_to_deal_flag,
    pinned_to_person_flag,
    pinned_to_organization_flag,
    pinned_to_lead_flag,
    organization__name,
    person__name,
    deal__title,
    user__email,
    user__name,
    user__is_you,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'notes') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )