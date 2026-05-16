SELECT
    R_REGIONKEY,
    R_NAME,
    R_COMMENT
FROM {{ ref('stg_region') }}