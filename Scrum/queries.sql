
-- What is our average velocity and points per dev over last 3 month
select t.name, Avg(POINTSSDELIVERED) as velocity, sum(POINTSSDELIVERED)/sum(t.tmcount)as  per_tm from team t
 inner join sprints s on t.name = s.team group by t.name
 
 --how many teams are havig scope creeks and by how many points  on avg
 select team, count(*) as HowManyTimes, pointsadded as HowMuch from sprints where pointsadded > 0 and team in (select name from ViewAvgVelocity) 
 group by team,pointsadded order by count(*) desc
 
  --how many times did these teams over commit and could not complete the commited stories
 select team, count(*) as HowManyTimes, pointsadded as HowMuch from sprints where
 pointsadded > 0 and team in (select name from ViewAvgVelocity) 
 and pointscomitted > POINTSSDELIVERED
 group by team,pointsadded order by count(*) desc

 
  --how many teams of these have had scope creeps on SHRP items
  select team, count(*) as HowManyTimes, pointsadded as HowMuch from sprints where 
  pointsadded > 0 and SHRP > 0
  and team in (select name from ViewAvgVelocity) 
 group by team,pointsadded order by count(*) desc
 