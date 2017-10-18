create table power(
create_date timestamp,
create_time TIME, 
south_supply float,
south_usage float,
center_supply float,
center_usage float,
north_supply float,
north_usage float,
east_supply float,
east_usage float,
primary key(create_date, create_time)
);
