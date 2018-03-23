select temperature , power_usage,  w_Time
from 
(select w.obsTime as w_Time, date(w.obsTime) as w_date, hour(w.obsTime) as w_hour, w.value as temperature
 from weather w
 where date(w.obsTime) != '0000-00-00'
 && date(w.obsTime) >= date'2016-09-27'
 && date(w.obsTime) <= date'2017-07-03'
 && w.locationName='BANQIAO,板橋') t1
 
inner join
 
 (select date(create_date) as p_date, hour(p.create_time) as p_hour, p.north_usage as power_usage
  from taipower p
  where date(p.create_date) >= date'2016-09-27'
  && date(p.create_date) <= date'2017-07-03') t2
  
  on t1.w_date = t2.p_date && t1.w_hour = t2.p_hour;
  
 /* select w.value as temp, p.north_usage as power_usage, date(w.obsTime), hour(w.obsTime)
  from power p, weather w
  where date(p.create_date) >= date'2016-09-27' && date(p.create_date) <= date'2017-07-03'
  && date(w.obsTime) >= date'2016-09-27' && date(w.obsTime) <= date'2017-07-03'
  && w.locationName='BANQIAO,板橋' && date(w.obsTime) = date(p.create_date)
  && hour(w.obsTime) = hour(p.create_time);*/