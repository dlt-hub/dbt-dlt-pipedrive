{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim__dlt_loads') }}
-- depends_on: {{ ref('dim_activities') }}
-- depends_on: {{ ref('dim_notes') }}
-- depends_on: {{ ref('dim_persons') }}
-- depends_on: {{ ref('dim_organizations') }}
-- depends_on: {{ ref('dim_users') }}
-- depends_on: {{ ref('dim_custom_fields_mapping') }}
-- depends_on: {{ ref('dim_deals_flow_activity') }}
-- depends_on: {{ ref('dim_deals') }}
-- depends_on: {{ ref('dim_deals_flow_deal_change') }}
-- depends_on: {{ ref('dim_deals_participants') }}
-- depends_on: {{ ref('dim_deals_flow_note') }}
-- depends_on: {{ ref('dim_activities__participants') }}
-- depends_on: {{ ref('dim_deals_flow_activity__participants') }}
-- depends_on: {{ ref('dim_deals_participants__person_id__email') }}
-- depends_on: {{ ref('dim_deals_participants__person_id__phone') }}
-- depends_on: {{ ref('dim_deals_participants__person__phone') }}
-- depends_on: {{ ref('dim_deals_participants__person__email') }}
-- depends_on: {{ ref('dim_deals_participants__person__im') }}
-- depends_on: {{ ref('dim_persons__phone') }}
-- depends_on: {{ ref('dim_persons__email') }}
-- depends_on: {{ ref('dim_persons__im') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('dlt_active_load_ids') }}