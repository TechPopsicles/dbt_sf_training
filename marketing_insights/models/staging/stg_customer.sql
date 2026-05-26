select 
    C_CUSTKEY,
    C_NAME,
    C_ADDRESS,
    C_NATIONKEY,
    C_PHONE,
    C_ACCTBAL,
    C_MKTSEGMENT,
    C_COMMENT,
    _LOADED_AT
from {{ source('SF_SAMPLE_DATA', 'customer')}}