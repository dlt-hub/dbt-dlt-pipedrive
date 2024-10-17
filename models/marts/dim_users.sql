/* Table: users */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.name,
    t.default_currency,
    t.timezone_name,
    t.timezone_offset,
    t.locale,
    t.email,
    t.created,
    t.modified,
    t.lang,
    t.active_flag,
    t.is_admin,
    t.last_login,
    t.signup_flow_variation,
    t.role_id,
    t.has_created_company,
    t.is_you,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_users') }} as t