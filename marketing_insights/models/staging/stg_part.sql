select 
    P_PARTKEY,
    P_NAME,
    P_MFGR,
    P_BRAND,
    P_TYPE,
    P_SIZE,
    P_CONTAINER,
    P_RETAILPRICE,
    P_COMMENT
    -- ,_LOADED_AT
from {{ source('SF_SAMPLE_DATA', 'part')}}