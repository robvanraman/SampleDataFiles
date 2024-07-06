--Show me the trend of customers by city who entered final delinquency today or nearing chageoff
SELECT CITY, COUNT(*) FROM Customer WHERE TIMESTAMPDIFF(DAY, LASTPAYMENT, '2024-07-04') >=99 and brokenpromises > 5
GROUP BY CITY

--How many of them agreed on cedit line adjustment or payment re-structuring along with their dues, by city
SELECT CITY, COUNT(*) as customers, sum(outstanding) as dues FROM Customer WHERE TIMESTAMPDIFF(DAY, LASTPAYMENT, '2024-07-04') >=99 and brokenpromises > 5
and adjustlimit > 0 GROUP BY CITY

--Provide more details around these customers and include their collateral status
SELECT * FROM CUSTOMER WHERE TIMESTAMPDIFF(DAY, LASTPAYMENT, '2024-07-04') >=99 and brokenpromises > 5
and adjustlimit > 0 GROUP BY CITY