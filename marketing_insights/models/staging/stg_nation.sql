select 
    N_NATIONKEY,
    N_NAME,
    N_REGIONKEY,
    N_COMMENT
from {{ ref('raw_nation') }}