SELECT
XMLGET(s.value, 'Transaction_ID'):"$"::string as "Transaction_ID",
XMLGET(s.value, 'Customer_ID'):"$"::int as "Customer_ID",
XMLGET(s.value, 'Transaction_Date'):"$"::string as "Transaction_Date",
XMLGET(s.value, 'Transaction_Type'):"$"::string as "Transaction_Type",
XMLGET(s.value, 'Transaction_Amount'):"$"::int as "Transaction_Amount",
XMLGET(s.value, 'Transaction_Mode'):"$"::string as "Transaction_Mode"
FROM MYDB.CASESTUDY_2_AZURE_BLOB_STORAGE.CASESTUDY_2_XML,
LATERAL FLATTEN(TO_ARRAY(MYDB.CASESTUDY_2_AZURE_BLOB_STORAGE.CASESTUDY_2_XML._DATA: "$")) s