
{{ config(materialized='incremental', incremental_strategy = 'append') }}


SELECT * FROM {{ ref('tmp_agg_order_insights') }}

{% if is_incremental() %}
    WHERE ds >= (select max(ds) from {{ this }} )
{% endif %}