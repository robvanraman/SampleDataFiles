
Corp Bond Head Trader''s Insights

1. what are the top 5 traded bonds today?
2. Which bonds out of the top traded bonds today did we miss?
3. By what margin did we miss the top traded bonds today?
4. do we have live offerings on them?
5. we don''t want to go short in this volatile season, compare the available quantity with current demand on these top traded tickers?
------------------------------------------------------------------------------------------------------------------
--what are the top 5 traded bonds today?
select cusip, sum(quantity) as quantity from trace group by cusip order by quantity desc limit 5

--Which bonds out of the top traded bonds today did we miss
select s.cusip, s.ticker from security s inner join trace t on t.cusip = s.cusip where dealer <>'WFS' 
AND s.CUSIP NOT IN (select cusip from trades)


--by what margin did we miss the top traded bonds today?
select t1.cusip, s.ticker,( t1.price - t2.price) as margin, t2.dealer from trades t1 
inner join security s on t1.cusip = s.cusip
left join trace t2 on t2.cusip = s.cusip
where t2.dealer <> 'WFS' and s.cusip in (select cusip from top5tradedbonds) order by margin desc

--why are we not trading on these, do we have live offerings on them?
--nOT RETURNIG data is intentional here
select t1.cusip, s.ticker, o.quantity, o.active from trades t1 
inner join security s on t1.cusip = s.cusip
left join trace t2 on t2.cusip = s.cusip
inner join offers o on o.cusip = s.cusip
where t2.dealer <> 'WFS' and active = 1 and s.cusip in (select cusip from top5tradedbonds) 

--we don''t want to go short in this volatile season, compare the available quantity with current demand on these top traded tickers?
select s.cusip, s.ticker, o.quantity as supply, t.quantity as demand, o.active from security s 
inner join offers o on s.cusip = o.cusip
inner join trace t on t.cusip = s.cusip
where active = 1

