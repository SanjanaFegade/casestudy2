SELECT *
from MYDB.CASESTUDY2_EXTARCTEDDATA.TRANSACTION
qualify rank() over(partition by 1 order by "Transaction_Amount" desc)<6