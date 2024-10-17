
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`fact_activities`
      
    
    

    OPTIONS()
    as (
      /* Fact Table: activities */


SELECT
    ---- main table activities
    activities.id,
    activities.company_id,
    activities.user_id,
    activities.done,
    activities.type,
    activities.due_date,
    activities.due_time,
    activities.duration,
    activities.busy_flag,
    activities.add_time,
    activities.marked_as_done_time,
    activities.subject,
    activities.public_description,
    activities.org_id,
    activities.person_id,
    activities.deal_id,
    activities.active_flag,
    activities.update_time,
    activities.private,
    activities.created_by_user_id,
    activities.org_name,
    activities.person_name,
    activities.deal_title,
    activities.owner_name,
    activities.person_dropbox_bcc,
    activities.deal_dropbox_bcc,
    activities.assigned_to_user_id,
    activities.type_name,

    

FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_activities` as activities
    );
  