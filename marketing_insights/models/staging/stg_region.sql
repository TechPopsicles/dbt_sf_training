SELECT
    R_REGIONKEY,
    R_NAME,
    R_COMMENT
FROM {{ ref('raw_region') }}