/* Table: persons */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'persons' */
    id,
    company_id,
    owner_id,
    name,
    first_name,
    open_deals_count,
    related_open_deals_count,
    closed_deals_count,
    related_closed_deals_count,
    participant_open_deals_count,
    participant_closed_deals_count,
    email_messages_count,
    activities_count,
    done_activities_count,
    undone_activities_count,
    files_count,
    notes_count,
    followers_count,
    won_deals_count,
    related_won_deals_count,
    lost_deals_count,
    related_lost_deals_count,
    active_flag,
    first_char,
    update_time,
    add_time,
    visible_to,
    owner_name,
    cc_email,
    _dlt_load_id,
    _dlt_id,
    last_name,
    org_id,
    org_name,
    test_field_1,
    next_activity_date,
    next_activity_id,
    test_field_2,
    label,
    single_option,
FROM {{ source('raw_data', 'persons') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )