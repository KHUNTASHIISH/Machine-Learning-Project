show databases;

use ashish;

select * from BigMart;


#1)Write a sql query to show all item_identifier
select Item_Identifier from BigMart;

#2)Write a sql query to show count of total item_identifier
select count(Item_Identifier) as Total_Item_Identifier from BigMart;
select count(*) from BigMart;

#3)Write a sql query to show maximum item weight
select max(Item_Weight) as MAX_Item_Weight from BigMart;

#4)Write a sql query to show minimum item weight
select min(Item_Weight) as MIN_Item_Weight from BigMart;

#5)Write a sql query to show Average item weight
select avg(Item_Weight) as Average_Item_Weight from BigMart;

#6)Write a query to show count of item_fat_content where item_fat_content is low fat
select Item_Fat_Content,count(Item_Fat_Content) as No_Of_Item_Fat_Content from BigMart 
where Item_Fat_Content="Low Fat";
select Item_Fat_Content,count(Item_Fat_Content) as No_Of_Item_Fat_Content from BigMart
where Item_Fat_Content in ("Low Fat");


#7)Write a query to show count of item_fat_content where item_fat_content is  regular
select Item_Fat_Content,count(Item_Fat_Content) as No_Of_Item_Fat_Content from BigMart 
where Item_Fat_Content="Regular";

#8)Write a query to show maximum item _MRP
select max(Item_MRP) as MAX_Item_MRP from BigMart;

#9)#8)Write a query to show minimum item _MRP
select min(Item_MRP) as MIN_Item_MRP from BigMart;

#10)Write a query to show item_Identifier,Item_Fat_Content,Item_Type,Item_MRP,and Item_MRP >200
select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from BigMart where Item_MRP >200;

select Outlet_Location_Type ,sum(Item_MRP) as Total_MRP_Fatwise ,Item_Fat_Content from BigMart 
group by Outlet_Location_Type,Item_Fat_Content; 

select Outlet_Location_Type ,sum(Item_MRP) as Total_MRP_Fatwise ,Item_Fat_Content from BigMart 
group by Item_Fat_Content,Outlet_Location_Type;

select Outlet_Location_Type ,sum(Item_MRP) as Toptal_MRP_Fatwise ,Item_Fat_Content from BigMart 
where Item_Type = "Dairy" group by Outlet_Location_Type ;

select Outlet_Location_Type ,sum(Item_MRP) as Toptal_MRP_Fatwise ,Item_Fat_Content from BigMart  
group by Outlet_Location_Type ;

select Outlet_Location_Type ,sum(Item_MRP) as Toptal_MRP_Fatwise ,Item_Fat_Content from BigMart  
group by Item_Fat_Content ;

#11)Write a query to show maximum item_MRP where item_fat_content is low fat
select Item_Fat_Content,max(Item_MRP) as MAX_Item_MRP from BigMart where Item_Fat_Content in("Low Fat"); 
select Item_Fat_Content,max(Item_MRP) as MAX_Item_MRP from BigMart where Item_Fat_Content = "Low Fat"; 

#12)Write a query to show minimum item_MRP and item_fat_content is low fat
select Item_Fat_Content,min(Item_MRP) as MIN_Item_MRP from BigMart where Item_Fat_Content in("Low Fat");

#13)Write a query to show all data where item MRP is beteen 50 to 100
select * from BigMart where Item_MRP between 50 and 100;

#14)Write a query to show all unique value item_fat_content
select distinct(Item_Fat_Content) ,count(Item_Fat_Content) from BigMart group by Item_Fat_Content ;

#15)Write a query to show all unique value item_Type
select distinct(Item_Type) from BigMart;
select distinct(Item_Type),count(Item_Type) from BigMart group by Item_Type ;

#16)Write a query to show all data in descending order by item MRP
select * from BigMart order by Item_MRP desc; 
select * from BigMart  group by Item_Fat_Content order by Item_MRP desc ; 

#17)Write a query to show all data in ascending order by Item_Outlet_Sales 
select * from BigMart order by Item_Outlet_Sales asc;
select count(Item_Weight) from BigMart where Item_Weight in ("NUll");

#18)Write a query to show all data in ascending by item_type
select * from BigMart order by Item_Type asc;

#19)Write a query to show data of item_type dairy and meat
select * from BigMart where Item_Type in("dairy","meat");

#20)Write a query to show all unique value of outlet_size
select distinct(Outlet_Size) as Unique_Value_Of_Outlet_size from BigMart;

#21))Write a query to show all unique value of Outlet_Location_Type
select distinct(Outlet_Location_Type) as Unique_Value_Of_Location_Type from BigMart;

#22))Write a query to show all unique value of outlet_Type
select distinct(Outlet_Type) as Unique_Value_Of_Outlet_Type from BigMart;

#23)Write a query to show count NO OF ITEM BY ITEM_TYPE AND ordered it in descending
select Item_Type,count(Item_Type) as NO_OF_ITEM from BigMart group by Item_Type  order by NO_OF_ITEM desc;

#24)Write a query to show count NO OF ITEM BY Outlet_Size and ordered it in ascending
select Outlet_Size ,count(Item_Identifier) as NO_OF_ITEM from BigMart group by Outlet_Size order by NO_OF_ITEM asc; 

#25)write a query to show count NO_OF_ITEM by Outlet_Establishment_Year and ordered it in asc 
select Outlet_Establishment_Year,count(Item_Identifier) as NO_OF_ITEM from BigMart 
group by Outlet_Establishment_Year
order by NO_OF_ITEM asc;

#26)Write a query to show count NO_OF_ITEM by Outlet_Type and Ordered it In descending
select Outlet_Type,count(Outlet_type) as NO_OF_ITEM from BigMart group by Outlet_Type 
order by NO_OF_ITEM desc;

#27)write a query to show count of item by Outlet_Location_type and ordered it in descending
select Outlet_Location_Type,count(Item_Identifier) as NO_OF_ITEM from BigMart group by Outlet_Location_Type 
order by NO_OF_ITEM desc;

#28)Write a query to show maximum MRP by ITEM_TYPE
select Item_Type,max(ITEM_MRP) as MAX_MRP from BigMart group by Item_Type;

#29)Write a query to show minimum MRP by ITEM_TYPE
select Item_Type,min(ITEM_MRP) as MIN_MRP from BigMart group by Item_Type;

#30)Write a query to show minimum MRP BY OUTLET_ESTABLISHMENT _YEAR and ordered it in desc 
select Outlet_Establishment_Year,min(Item_MRP) as MIN_MRP from BigMart group by Outlet_Establishment_Year 
order by Outlet_Establishment_Year desc;

#31)Write a query to show maximum MRP BY OUTLET_ESTABLISHMENT _YEAR and ordered it in desc 
select Outlet_Establishment_Year,max(Item_MRP) as MAX_MRP from BigMart group by Outlet_Establishment_Year 
order by Outlet_Establishment_Year desc;

#32)Write a query to show average MRP by Outlet_Size and ordered in desc 
select Outlet_Size,avg(Item_MRP) as Average_MRP from BigMart group by Outlet_Size order by Average_MRP desc;

#33)Write a query to show average MRP by outletsize
select Outlet_Size ,avg(Item_MRP) as Average_MRP from BigMart group by Outlet_Size;

#34)Write a query to show avg MRP by OUTLET_TYPE and ordered in asc 
select Outlet_Type,avg(Item_MRP) as Average_MRP from BigMart group by Outlet_Type order by Average_MRP asc;

#35)Write a query to show MAX MRP by outlet_type
select Outlet_Type ,max(Item_MRP) as MAX_MRP from BigMart group by Outlet_Type;

#36)Write a query to show MAX Item_Weight by Item_Type
select Item_Type ,max(Item_Weight) as MAX_Item_Weight from BigMart group by Item_Type;
select Item_Type ,min(Item_Weight) as MAX_Item_Weight from BigMart group by Item_Type;

#37)Write a query to show MAX Item_Weight by Outlet_Establishment_Year
select Outlet_Establishment_Year ,max(Item_Weight) as MAX_Item_Weight from BigMart 
group by Outlet_Establishment_Year;

#38)Write a query to show MIN Item_Weight by Outlet_Type
select Outlet_Type ,min(Item_MRP) as MIN_Item_Weight from BigMart group by Outlet_Type;

#39)Write a query to show AVG Item_Weight by Outlet_Location_type order by desc 
select Outlet_Location_Type ,AVG(Item_Weight)as Average_Item_Weight from BigMart group by Outlet_Location_Type 
order by Outlet_Location_Type; 

#40)Write a query to show MAX item_outlet_sales by item_type
select Item_Type,max(Item_Outlet_sales) as MAX_Item_outlet_sales from BigMart group by Item_Type;

#41)Write a query to show MIN item_outlet_sales by item_type
select Item_Type,min(Item_Outlet_sales) as MIN_Item_outlet_sales from BigMart group by Item_Type;

#42)Write a query to show MIN item_outlet_sales by outlet_establishment_year
select Outlet_Establishment_Year ,min(Item_Outlet_sales) as MIN_Item_outlet_sales from BigMart 
group by Outlet_Establishment_Year;

#43)Write a query to show MIN item_outlet_sales by outlet_establishment_year by DESC
select Outlet_Establishment_Year ,min(Item_Outlet_sales) as MIN_Item_outlet_sales from BigMart 
group by Outlet_Establishment_Year 
order by Outlet_Establishment_Year desc ;

#44)Write a query to show AVG item_outlet_sales by outlet_size and ordered it an desc 
select Outlet_Size ,AVG(Item_Outlet_sales) as Average_Item_outlet_sales from BigMart group by Outlet_Size 
order by Outlet_Size desc ;

#45)Write a query to show AVG Item_Outlet_Sales by Outlet_Size
select Outlet_Size ,AVG(Item_Outlet_Sales) as Average_Item_outlet_sales from BigMart group by Outlet_Size ;

#46)Write a query to show AVG Item_Outlet_Sales by Outlet_Type
select Outlet_Type ,AVG(Item_Outlet_Sales) as Average_Item_outlet_sales from BigMart group by Outlet_Type;

#47)Write a query to show MAX Item_Outlet_Sales by Outlet_Type
select Outlet_Type ,max(Item_Outlet_Sales) as MAX_Item_outlet_sales from BigMart group by Outlet_Type;

#48)Write a query to show total item_Outlet_sales by Outlet_Establishment_Year
select Outlet_Establishment_Year,sum(Item_Outlet_Sales) as Total_Item_outlet_sales from BigMart
group by Outlet_Establishment_Year;

#49)Write a query to show total item_Outlet_sales by Outlet_Establishment_Year
select Item_Type ,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales from BigMart group by Item_Type ;

#50)Write a query to show total item_Outlet_sales by Outlet_Location_Type 
select Outlet_Location_Type ,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales from BigMart group by Outlet_Location_Type;

#51)Write a query to show total item_Outlet_sales by item_fat_content 
select Item_Fat_Content ,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales from BigMart 
group by Item_Fat_Content;

#52)Write a query to show MAX Item_Visibility by Item_Type
select Item_Type,max(Item_Visibility) as MAX_Item_Visibility from BigMart group by Item_Type; 

#53)Write a query to show MIN Item_Visibility by Item_Type
select Item_Type,min(Item_Visibility) as MIN_Item_Visibility from BigMart group by Item_Type;

#54)Write a query to show total Item_Outlet_Sales by Item_Type but only where outlet_location_type is tier 1
select Item_Type,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales,Outlet_Location_Type from Bigmart
group by Item_Type,Outlet_Location_Type
having Outlet_Location_Type in("Tier 1");

select Item_Type,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales,Outlet_Location_Type from Bigmart
where Outlet_Location_Type="Tier 1"
group by Item_Type,Outlet_Location_Type ;

select Item_Type,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales,Outlet_Location_Type from Bigmart
where Outlet_Location_Type="Tier 1" group by Item_Type ;

#55)Write a query to show total Item_Outlet_Sales by Item_Type where Item_Fat_Content is only Low Fat and LF
select Item_Type,sum(Item_Outlet_Sales) as Total_Item_Outlet_Sales,Item_Fat_Content from Bigmart
group by Item_Type,Item_Fat_Content 
having Item_Fat_Content in("Low Fat","LF");

select Item_Type,sum(Item_Outlet_Sales),Item_Fat_Content from Bigmart 
where Item_Fat_Content in("Low Fat","LF") group by Item_Type,Item_Fat_Content;

select Item_Fat_Content ,sum(Item_Outlet_Sales)  from BigMart group by Item_Fat_Content;