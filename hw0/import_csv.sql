load data local infile 'C:\\Users\\User\\Desktop\\taipower\\2017-09-23.csv'
into table power
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n'
(@col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8, @col9)
set create_date='2017-09-23', create_time=@col1, north_supply=@col2, north_usage=@col3,
center_supply=@col4, center_usage=@col5, south_supply=@col6, south_usage=@col7,
east_supply=@col8, east_usage=@col9;  
