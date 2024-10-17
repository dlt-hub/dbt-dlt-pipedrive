
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_participants`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_participants */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'deals_participants' */
    id,
    person_id__active_flag,
    person_id__name,
    person_id__owner_id,
    person_id__value,
    add_time,
    active_flag,
    related_item_data__deal_id,
    related_item_data__title,
    person__id,
    person__company_id,
    person__owner_id__id,
    person__owner_id__name,
    person__owner_id__email,
    person__owner_id__has_pic,
    person__owner_id__active_flag,
    person__owner_id__value,
    person__org_id__name,
    person__org_id__people_count,
    person__org_id__owner_id,
    person__org_id__active_flag,
    person__org_id__cc_email,
    person__org_id__owner_name,
    person__org_id__value,
    person__name,
    person__first_name,
    person__open_deals_count,
    person__related_open_deals_count,
    person__closed_deals_count,
    person__related_closed_deals_count,
    person__participant_open_deals_count,
    person__participant_closed_deals_count,
    person__email_messages_count,
    person__activities_count,
    person__done_activities_count,
    person__undone_activities_count,
    person__files_count,
    person__notes_count,
    person__followers_count,
    person__won_deals_count,
    person__related_won_deals_count,
    person__lost_deals_count,
    person__related_lost_deals_count,
    person__active_flag,
    person__first_char,
    person__update_time,
    person__add_time,
    person__visible_to,
    person__sync_needed,
    person__org_name,
    person__owner_name,
    person__primary_email,
    person___8c765c39b4685f0ed9fe839a594f8bb7374df744,
    person__cc_email,
    added_by_user_id__id,
    added_by_user_id__name,
    added_by_user_id__email,
    added_by_user_id__has_pic,
    added_by_user_id__active_flag,
    added_by_user_id__value,
    related_item_type,
    related_item_id,
    _dlt_load_id,
    _dlt_id,
    person__last_name,
FROM `dlthub-sandbox`.`pipedrive_data`.`deals_participants`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  