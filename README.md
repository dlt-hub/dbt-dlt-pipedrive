# Pipedrive dlt dbt package

### Overview
The Pipedrive dbt package offers data models to help you transform and analyze Pipedrive data. It's designed to integrate seamlessly with the dlt Pipedrive pipeline, which extracts and loads Pipedrive data into your data warehouse.

### Who is this for?
This package is perfect for dbt users who want to integrate Pipedrive data into their analytics workflows without building models from scratch.

### Key Features
- **Staging Models:** Clean and prepare raw Pipedrive data for downstream analysis.
- **Mart Models:** Pre-built dimension and fact tables for key Pipedrive entities like player deals, activities, leads, organisations, etc.
- **Incremental Loading:** Supports incremental data processing to optimize performance.
- **Easy Integration:** Designed to work out-of-the-box with the dlt Pipedrive pipeline.

### Setup Instructions

#### Prerequisites
- dbt Core installed in your environment.
- Access to a supported data warehouse: BigQuery, Snowflake, Redshift, Athena, or PostgreSQL.
- The dlt Pipedrive pipeline is set up and running.

### Step 1: Set Up the dlt Pipedrive Pipeline
1. **Install dlt:**
   ``` 
   pip install dlt
   ```
2. **Configure the Pipeline:**
   Follow the dlt [Pipedrive pipeline documentation](https://dlthub.com/docs/dlt-ecosystem/verified-sources/pipedrive) to set up your pipeline. Ensure you have your Pipedrive API key and destination credentials configured.

3. **Run the Pipeline:**
   Extract and load data from Pipedrive into your data warehouse by running the pipeline.

### Step 2: Install and Configure the dbt Project

1. Install the Pipedrive dbt package into your dbt environment.
2. Configure your 'dbt_project.yml' file with the appropriate connection details for your data warehouse.
3. Ensure the data from your dlt Pipedrive pipeline is available in your warehouse.

This is how the tables in dbt package look like:

```text
dbt_pipedrive/
├── analysis/
├── dbt_packages/
├── logs/
├── macros/
└── models/
│   ├── marts/
│   │   ├── dim_dlt_loads.sql
│   │   ├── dim_activities_participants.sql
│   │   ├── dim_custom_fields_mapping.sql
│   │   ├── dim_deals_label.sql
│   │   ├── dim_deals_flow_activity_participants.sql
│   │   ├── dim_deals_flow_activity.sql
│   │   ├── dim_deals_flow_deal_change.sql
│   │   ├── dim_deals_participants_person_email.sql
│   │   ├── dim_deals_participants_person_im.sql
│   │   ├── dim_deals_participants_person_phone.sql
│   │   ├── dim_deals_participants_person_id_email.sql
│   │   ├── dim_deals_participants_person_id_phone.sql
│   │   ├── dim_deals_participants.sql
│   │   ├── dim_deals.sql
│   │   ├── dim_leads.sql
│   │   ├── dim_organizations.sql
│   │   ├── dim_persons_email.sql
│   │   ├── dim_persons_im.sql
│   │   ├── dim_persons_labels.sql
│   │   ├── dim_persons_multiple_options.sql
│   │   ├── dim_persons_phone.sql
│   │   ├── dim_persons.sql
│   │   ├── dim_users.sql
│   │   ├── fact_activities.sql
│   │   ├── fact_deals.sql
│   ├── staging/
│   │   ├── stg_dlt_loads.sql
│   │   ├── stg_activities_participants.sql
│   │   ├── stg_activities.sql
│   │   ├── stg_custom_fields_mapping.sql
│   │   ├── stg_deals_label.sql
│   │   ├── stg_deals_flow_activity_participants.sql
│   │   ├── stg_deals_flow_activity.sql
│   │   ├── stg_deals_flow_deal_change.sql
│   │   ├── stg_deals_participants_person_email.sql
│   │   ├── stg_deals_participants_person_im.sql
│   │   ├── stg_deals_participants_person_phone.sql
│   │   ├── stg_deals_participants_person_id_email.sql
│   │   ├── stg_deals_participants_person_id_phone.sql
│   │   ├── stg_deals_participants.sql
│   │   ├── stg_deals.sql
│   │   ├── stg_leads.sql
│   │   ├── stg_organizations.sql
│   │   ├── stg_persons_email.sql
│   │   ├── stg_persons_im.sql
│   │   ├── stg_persons_labels.sql
│   │   ├── stg_persons_multiple_options.sql
│   │   ├── stg_persons_phone.sql
│   │   ├── stg_persons.sql
│   │   ├── stg_products.sql
│   │   ├── stg_products_prices.sql
│   │   ├── stg_users.sql
│   │   ├── dlt_active_load_ids.sql
│   │   ├── dlt_processed_load_ids.sql
├── target/
├── tests/
├── dbt_project.yml
├── sources.yml
└── requirements.txt
```

### Step 3: Run dbt
Execute the dbt models to transform the raw Pipedrive data into useful tables:

```sh
dbt run
```

>You can use the 'run_pipedrive_dbt.py' script to execute your dbt transformations and load the results into a 
>new dataset named `<original-dataset>_transformed` and run the dbt tests. To use, please ensure you configure 
>your dlt pipeline name and destination correctly.

To check for issues, run the dbt tests:

```sh
dbt test
```

### Schema diagram
The dbt model above can be further customized according to the requirements. Using this package you'll get a basic template
for data model which can be further modified as required.

1. The schema of data modelled above using dlt-dbt-generator:
    
   ![picture1](https://storage.googleapis.com/dlt-blog-images/pipedrive-dlt-dbt-package%20(1).png)

> Please note that this is a starting template for your data model and is not the final product. It is advised to customize the
> data model as per your needs.

Here's the link to the DB diagram: [link](https://dbdiagram.io/d/pipedrive-dlt-dbt-package-66ff4a7cfb079c7ebd49efa9).

#### Optional: Advanced Usage (Generator and Licensing)

This package was created using the dlt-dbt-generator by dlt-plus. For more information about dlt-plus, refer to the 
[dlt-plus documentation.](https://dlt-plus.netlify.app/docs/plus/intro/) To learn more about the dlt-dbt-generator, 
consult the [dlt-dbt-generator](https://dlt-plus.netlify.app/docs/plus/dlt_dbt_generator/#5-running-dbt-package-directly) documentation.

> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed.