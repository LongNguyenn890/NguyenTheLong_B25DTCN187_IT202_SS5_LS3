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

-- Nếu min_trust_score bị nhập nhầm thành số âm thì logic sẽ bị phá vỡ bởi vì:
	-- Khi  min_trust_score = -10 thì => mọi tài xế dều hợp lệ điều này khiến cho bộ lọc không thể chinh xác 