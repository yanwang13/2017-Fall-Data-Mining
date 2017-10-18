load data local infile 'C:\\Users\\User\\Downloads\\power.csv'
into table power
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\r\n'
(@col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8, @col9, @col10, @col11, @col12, @col13, @col14, @col15)
set create_date=@col3, center_supply=@col4, center_usage=@col5, east_supply=@col6, east_usage=@col7,
north_supply=@col8, north_usage=@col9, south_supply=@col10, south_usage=@col11,
create_time=@col12;  