
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_processed_load_ids`
      
    
    

    OPTIONS()
    as (
      
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim__dlt_loads`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`fact_activities`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_organizations`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_products`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_users`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_leads`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_custom_fields_mapping`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_flow_activity`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`fact_deals`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_flow_deal_change`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_activities__participants`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals__label`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_flow_activity__participants`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants__person_id__email`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants__person_id__phone`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants__person__phone`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants__person__email`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants__person__im`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons__phone`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons__email`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons__im`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons__labels`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons__multiple_options`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_products__prices`
/* we save all currently active load ids into the processed ids table */
select load_id, current_timestamp() as inserted_at FROM `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
    );
  