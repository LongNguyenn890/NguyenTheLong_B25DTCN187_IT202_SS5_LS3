create database drivers_manager;
use drivers_manager;

create table DRIVERS (
	id int auto_increment primary key,
    name varchar (50) not null,
    status varchar (20),
    trust_score int check (trust_score between 0 and 100),
    distance_km decimal (5,2)
);

select * from DRIVERS
where status = 'AVAILABLE' and trust_score > 80
order by distance_km ASC, trust_score DESC;