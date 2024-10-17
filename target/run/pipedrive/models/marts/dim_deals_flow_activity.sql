
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_flow_activity`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_flow_activity */

SELECT
    t.id,
    t.company_id,
    t.user_id,
    t.done,
    t.type,
    t.due_date,
    t.due_time,
    t.duration,
    t.busy_flag,
    t.add_time,
    t.marked_as_done_time,
    t.subject,
    t.public_description,
    t.org_id,
    t.person_id,
    t.deal_id,
    t.active_flag,
    t.update_time,
    t.private,
    t.created_by_user_id,
    t.org_name,
    t.person_name,
    t.deal_title,
    t.owner_name,
    t.person_dropbox_bcc,
    t.deal_dropbox_bcc,
    t.assigned_to_user_id,
    t.type_name,
    t.timestamp,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_flow_activity` as t
    );
  