SELECT
    p.cusip,
    s.ticker,
     t.traderName,
     i.inventoryName,
    sum(p.quantity)
INTO
    positionagg 
FROM
    tradein p 
    JOIN securityin s  ON p.cusip=s.cusip AND DATEDIFF(minute,p,s) BETWEEN 0 AND 15 
    JOIN trader t    ON p.traderId=t.traderId AND DATEDIFF(minute,p,t) BETWEEN 0 AND 15 
    JOIN inventory i   ON p.inventoryId=i.inventoryId AND DATEDIFF(minute,p,i) BETWEEN 0 AND 15 
GROUP BY p.cusip,s.ticker, t.traderName,i.inventoryName, TumblingWindow(millisecond, 90)
