
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_organizations`
      
    
    

    OPTIONS()
    as (
      /* Table: organizations */

SELECT
    t.id,
    t.company_id,
    t.owner_id,
    t.name,
    t.open_deals_count,
    t.related_open_deals_count,
    t.closed_deals_count,
    t.related_closed_deals_count,
    t.email_messages_count,
    t.people_count,
    t.activities_count,
    t.done_activities_count,
    t.undone_activities_count,
    t.files_count,
    t.notes_count,
    t.followers_count,
    t.won_deals_count,
    t.related_won_deals_count,
    t.lost_deals_count,
    t.related_lost_deals_count,
    t.active_flag,
    t.first_char,
    t.update_time,
    t.add_time,
    t.visible_to,
    t.cc_email,
    t.owner_name,
    t._dlt_load_id,
    t._dlt_id,
    t.next_activity_date,
    t.next_activity_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_organizations` as t
    );
  