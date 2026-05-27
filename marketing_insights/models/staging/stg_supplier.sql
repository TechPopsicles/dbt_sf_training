select 
    S_SUPPKEY,
    S_NAME,
    S_ADDRESS,
    S_NATIONKEY,
    S_PHONE,
    S_ACCTBAL,
    S_COMMENT
    -- ,_LOADED_AT
from {{ source('SF_SAMPLE_DATA', 'supplier')}}