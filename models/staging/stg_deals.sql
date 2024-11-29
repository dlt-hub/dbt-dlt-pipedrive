/* Table: deals */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'deals' */
    id,
    creator_user_id,
    user_id,
    person_id,
    org_id,
    stage_id,
    title,
    value,
    currency,
    add_time,
    update_time,
    active,
    deleted,
    status,
    last_activity_id,
    last_activity_date,
    lost_reason,
    visible_to,
    close_time,
    pipeline_id,
    lost_time,
    products_count,
    files_count,
    notes_count,
    followers_count,
    email_messages_count,
    activities_count,
    done_activities_count,
    undone_activities_count,
    participants_count,
    expected_close_date,
    local_lost_date,
    local_close_date,
    stage_order_nr,
    person_name,
    org_name,
    formatted_value,
    weighted_value,
    formatted_weighted_value,
    weighted_value_currency,
    owner_name,
    cc_email,
    org_hidden,
    person_hidden,
    _dlt_load_id,
    _dlt_id,
    won_time,
    first_won_time,
    local_won_date,
    next_activity_date,
    next_activity_id,
    next_activity_subject,
    next_activity_type,
FROM {{ source('raw_data', 'deals') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )