show databases;

use ashish;

create table NYC_1(
id  int(10) ,
name varchar(500) ,
host_id int(10) ,
host_name varchar(100) ,
neighbourhood_group varchar(50) ,
neighbourhood varchar(50) ,
room_type varchar(50) 
);

drop table NYC_1;
truncate table NYC_1;

create table NYC_2(
id int(5) ,
price int(10) ,
minimum_nights int(10) ,
number_of_reviews int(10) ,
reviews_per_month int(10) ,
calculated_host_listings_count int(10) ,
availability_365 int(10)
);

drop table NYC_2;
truncate table NYC_2;

select * from NYC_1;
select * from NYC_2;

#1)Write query to show name from nyc_1 
select name from NYC_1;

#2)Write query to show count of id in NYC_1
select count(id) from NYC_1;

#3)Write query to show count of id in NYC_2
select count(id) from NYC_2;

#4)Write query to show host id NYC_1
select host_id from NYC_1;

#5)Write query to show all unique host_id from nyc_1  
select count(distinct(host_id)) as All_Unique_host_id from NYC_1;
select distinct(host_id) as All_Unique_host_id from NYC_1;

#6)Write query to show all unique neighbourhood_group from nyc_1  
select distinct(neighbourhood_group) as All_Unique_neighbourhood_group from NYC_1;
select count(distinct(neighbourhood_group)) as All_Unique_neighbourhood_group from NYC_1;

#7)Write query to show all unique neighbourhood from nyc_1  
select distinct(neighbourhood) as All_Unique_neighbourhood from NYC_1;

#8)Write query to show room_type from NYC_1
select room_type from NYC_1;
select distinct(room_type) from NYC_1;

#9)Write query to show all values of Brooklyn and Manhattan from nyc_1 
select * from NYC_1 where neighbourhood_group in("Brooklyn","Manhattan");

#10)Write a query to show unique value of room_type from NYC_1
select distinct(room_type) as Unique_value from NYC_1;

#11)Write query to show MAX price from NYC_2
select max(Price) as MAX_Price from NYC_2;

select max(Price) as MAX_Price from NYC_2 
where Price not in (select max(Price) as MAX_Price from NYC_2);

#12)Write query to show MIN price from NYC_2
select min(Price) as MIN_Price from NYC_2;

select min(Price) as MIN_PRICE from NYC_2 
where Price not in (select min(Price) from nyc_2 );

#13)Write query to show AVG price from NYC_2
select AVG(Price) as Average_Price from NYC_2;

#14)Write a query to show minimum value of minimum_nights from NYC_2
select min(minimum_nights) as MIN_Value_Of_minimum_nights from NYC_2;

#15)Write a query to show maximum value of minimum_nights from NYC_2
select max(minimum_nights) as MAX_Value_Of_minimum_nights from NYC_2;

#16)Write a query to show average avaiability_365
select avg(availability_365) as Average_availability_365 from NYC_2;

#17)Write query to show id,availability_365,and all availability_365 value >300
select id,availability_365 from NYC_2 where availability_365 > 300;
 
#18)Write a query to show count of id where price is in between 300 to 400
select count(ID) as Count_Of_id from NYC_2 where Price between 300 and 400; 

#19)Write query to show count of id where MIN_nights spend <5
select count(id) as Count_Of_id from NYC_2 where minimum_nights <5;

#20)Write query to show count of id where MIN_nights spend > 100
select count(id) as Count_Of_id from NYC_2 where minimum_nights > 100;

#21)Write query to show all data of NYC_1 & NYC_2
select * from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID;

#22)Write to show hostname and price
select NYC_1.host_name ,NYC_2.Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID;

#23)Write query to show room_type and price
select NYC_1.room_type,NYC_2.Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID;

select n.room_type,m.Price from NYC_1 n inner join NYC_2 m  on n.ID = m.ID;

#24)Write query to show neighbourhood_group and minimum_nights spend
select NYC_1.neighbourhood_group ,NYC_2.minimum_nights from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID;

#25)Write query to show neighbourhood and availability_365
select NYC_1.neighbourhood ,NYC_2.availability_365 from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID;

#26)Write query to show total price by neighbourhood_group
select NYC_1.neighbourhood_group,sum(NYC_2.Price) as Total_Price from NYC_1 inner join NYC_2 
on NYC_1.ID = NYC_2.ID
group by neighbourhood_group;

#27)Write query to show maximum price by neighbourhood_group
select neighbourhood_group,max(Price) as MAX_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by neighbourhood_group;

select neighbourhood_group,max(Price) as MAX_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
where Price not in (select max(price) from NYC_2) group by neighbourhood_group ;

#28)Write query to show maximum night spend by neighbourhood_group
select NYC_1.neighbourhood_group ,max(NYC_2.minimum_nights) as MAX_night from NYC_1 inner join NYC_2
on NYC_1.id=NYC_2.id group by neighbourhood_group ;

#29)Write query to show maximum reviews_per_month spend by neighbourhood
select NYC_1.neighbourhood ,max(NYC_2.reviews_per_month) as MAX_reviews_Per_month from NYC_1 inner join NYC_2
on NYC_1.id=NYC_2.id group by neighbourhood;

#30)Write query to show maximum Price by room_type
select room_type ,max(Price) as MAX_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by room_type ;

#31)Write query to show Average number of reviews by room_type
select room_type,avg(number_of_reviews) as Average_number_of_reviews from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by room_type;

#32)Write query to show Average Price by room_type
select room_type ,avg(Price) as Average_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by room_type ;

#33)Write query to show Average night spend by room_type
select room_type ,avg(minimum_nights) as Average_night_spend from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by room_type ;

#34)Write query to show average price by room type but average price < 100
select room_type ,avg(NYC_2.Price) as Average_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
group by NYC_1.room_type having Average_Price < 100;

select room_type ,avg(NYC_2.Price) as Average_Price from NYC_1 inner join NYC_2 on NYC_1.ID = NYC_2.ID
where NYC_2.Price < 100 group by NYC_1.room_type ;  # getting different result

#35)Write query to show average nights by neighbourhood and average nights >5
select NYC_1.neighbourhood,avg(NYC_2.minimum_nights) as Average_Nights from NYC_1 inner join NYC_2 
on NYC_1.ID = NYC_2.ID
group by NYC_1.neighbourhood having Average_Nights > 5;

select avg(NYC_2.minimum_nights) from nyc_2 ; 

#36)Write query to show all data from NYC_1 and price > 200 using subqyery
select * from NYC_1 left join NYC_2 on NYC_1.id=NYC_2.id where NYC_2.Price >200;

select * from NYC_1 where id in(select id from NYC_2 where Price >200); 

#37)Write query to show all values from NYC_2 table and host_id is 314941
select * from NYC_2 left join NYC_1 on NYC_1.id=NYC_2.id where NYC_1.host_id =314941;

#38)Find all pairs of id having the same host id,each pair coming once only 
select n.ID,n.host_id
from NYC_1 n,NYC_1 n1
where n.ID=n1.host_id and n.ID != n1.ID;

#39)Write sql query to show fatch all records that have term cozy in name
select * from NYC_1 where name="cozy";

#40)Write query to show price ,hostid,neighbourhood_group of manhattan neighbourhood_group
select NYC_1.host_id,NYC_1.neighbourhood_group,NYC_2.Price from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where neighbourhood_group ="Manhattan";

select NYC_1.host_id,NYC_1.neighbourhood_group,sum(NYC_2.Price) from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
group by neighbourhood_group having  neighbourhood_group ="Manhattan";

select NYC_1.host_id,NYC_1.neighbourhood_group,sum(NYC_2.Price) from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where neighbourhood_group ="Manhattan" group by neighbourhood_group ;


#41)Write query to show id,host_name,neighbourhood and price but only 
#   for upper west side and williamsburg neighbourhood also price is >100
select NYC_1.ID,NYC_1.host_name,NYC_1.neighbourhood,NYC_2.Price from NYC_1 inner join NYC_2
on NYC_1.ID=NYC_2.ID
where NYC_1.neighbourhood in("upper west side","williamsburg") and NYC_2.Price>100;

select NYC_1.ID,NYC_1.host_name,NYC_1.neighbourhood,sum(NYC_2.Price) from NYC_1 inner join NYC_2
on NYC_1.ID=NYC_2.ID
where NYC_1.neighbourhood in("upper west side","williamsburg") and NYC_2.Price>100 
group by neighbourhood_group;

#42)Write query to show id,host_name,neighbourhood and price for hostname Elise and neighbourhood is Bedford-Stuyvesant
select NYC_1.ID,NYC_1.host_name,NYC_1.neighbourhood,NYC_2.Price from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where NYC_1.neighbourhood="Bedford-Stuyvesant" and NYC_1.host_name ="Elise";

select NYC_1.ID,NYC_1.host_name,NYC_1.neighbourhood,sum(NYC_2.Price) from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where NYC_1.neighbourhood="Bedford-Stuyvesant" and NYC_1.host_name ="Elise" 
group by NYC_1.neighbourhood;

#43)Write query to show hostname,availability_365,minimum_nights only for 100+ availability_365 and minimum nights 
select NYC_1.ID,NYC_1.host_name,NYC_2.availability_365,(NYC_2.minimum_nights) from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where NYC_2.availability_365 >100 and NYC_2.minimum_nights >100;

select NYC_1.ID,NYC_1.host_name,NYC_2.availability_365,min(NYC_2.minimum_nights) from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where NYC_2.availability_365 >100 and NYC_2.minimum_nights >100;

#44)Write query to show to fetch id,host_name,no_of_reviews and reviews_per_month but show only that records where number
#  of reviews are 500+ and review per month is 5+
select NYC_1.ID,NYC_1.host_name,NYC_2.number_of_reviews,NYC_2.reviews_per_month from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
where NYC_2.number_of_reviews >500 and NYC_2.reviews_per_month >5;

#45)Write query to show neighbourhood_group which have most total number of review
select NYC_1.neighbourhood_group ,max(NYC_2.number_of_reviews) as Most_Total_Number_Of_reviews
from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID 
group by NYC_1.neighbourhood_group 
order by Most_Total_Number_Of_reviews desc limit 1;

#46)Write query to show host_name which have cheaper total Price
select NYC_1.host_name ,min(NYC_2.Price) as Cheaper_Total_Price
from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
group by NYC_1.host_name order by Cheaper_Total_Price asc limit 1;

select NYC_1.host_name ,min(NYC_2.Price) as Cheaper_Total_Price
from NYC_2 inner join NYC_1 
on NYC_1.ID=NYC_2.ID
where Price not in (select min(Price) from NYC_2)
group by NYC_1.host_name;

#47)Write query to show host_name which have most costly total price
select NYC_1.host_name ,min(NYC_2.Price) as Most_Total_Price
from NYC_1 inner join NYC_2 
on NYC_1.ID=NYC_2.ID
group by NYC_1.host_name order by Most_Total_Price  desc limit 1;

#48)Write query to show host_name which have max price using subquery
select NYC_1.host_name ,max(Price) from NYC_1 inner join NYC_2 on NYC_1.ID=NYC_2.ID
where NYC_2.Price in(select max(Price) from NYC_2);

#49)Write query to show neighbourhood_group which  price <100
select NYC_1.neighbourhood_group ,NYC_2.Price from NYC_1 inner join NYC_2 on NYC_1.ID=NYC_2.ID
where NYC_2.Price < 100 group by NYC_1.neighbourhood_group ;

#50)Write query to find max price,average availability_365 for each room_type and other in asc by max price
select NYC_1.room_type,max(NYC_2.Price) as MAX_Price ,NYC_2.availability_365  
from NYC_1 inner join NYC_2 on NYC_1.ID=NYC_2.ID
group by NYC_1.room_type order by MAX_Price asc;

