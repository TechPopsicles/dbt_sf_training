
{{ config(materialized='incremental', incremental_strategy = 'append') }}


SELECT * FROM {{ ref('tmp_agg_order_insights') }}

