show databases;
create database Blinkit;
use Blinkit;

#Q1 Import Data from table Grocery Sales using the provided CSV File.
show tables;
select * from sales;

#Q2 Write an SQL query to show all Item_Identifier
select item_identifier from sales;

#Q3 Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from sales;

#Q4 Write an SQL query to show maximum Item Weight.
select max(item_weight) from sales;

#Q5 Write an SQL query to show minimum Item Weight.
select min(item_weight) from sales;

#Q6 Write an SQL query to show average Item_Weight.
select avg(item_weight) from sales;

#Q7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(item_fat_content) from sales where item_fat_content in ('low fat');

#Q8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) from sales where item_fat_content in ('regular');

#Q9 Write an SQL query to show maximum Item_MRP
select max(Item_MRP) from sales;

#Q10 Write an SQL query to show minimum Item_MRP
select min(Item_MRP) from sales;

#Q11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose 
#Item_MRP is greater than 200.

#Q12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(Item_MRP) from sales where Item_Fat_Content = 'low fat';

#Q13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(Item_MRP) from sales where Item_Fat_Content = 'low fat';


#Q14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from sales where Item_MRP > 50 and Item_MRP < 100;

#Q15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct(item_fat_content) from sales;

#Q16 Write an SQL query to show ALL UNIQUE value of  Item_Type
select distinct(item_type) from sales;

#Q17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select * from sales
order by item_mrp desc;

#Q18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from sales
order by Item_Outlet_Sales;

#Q19 Write an SQL query to show ALL DATA in ascending by Item_Type
select * from sales
order by Item_type;

#Q20 Write an SQL query to show DATA of item_type dairy & Meat
select * from sales where item_type in ('dairy','meat'); 

#Q21 Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct(Outlet_Size) from sales;

#Q22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(Outlet_Location_Type) from sales;

#Q23 Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct(Outlet_Type) from sales;

#Q24 Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select item_type, count(item_identifier) from sales
group by Item_Type
order by count(Item_Identifier) desc;

#Q25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select Outlet_Size , count(item_identifier) from sales
group by outlet_size
order by count(Item_Identifier);

#Q26 Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order
select Outlet_type , count(item_identifier) from sales
group by outlet_type
order by count(Item_Identifier) desc;

#Q27 Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select Outlet_Location_Type , count(item_identifier) from sales
group by Outlet_Location_Type
order by count(Item_Identifier) desc;

#Q28 Write an SQL query to show maximum MRP by Item_Type
select item_type, max(item_mrp) from sales
group by Item_Type;

#Q29 Write an SQL query to show minimum MRP by Item_Type
select item_type, min(item_mrp) from sales
group by Item_Type;

#Q30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year, min(item_mrp) from sales
group by Outlet_Establishment_Year
order by min(item_mrp) desc;

#Q31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year, max(item_mrp) from sales
group by Outlet_Establishment_Year
order by max(item_mrp) desc;

#Q32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select Outlet_size, avg(item_mrp) from sales
group by outlet_size
order by avg(item_mrp) desc;
 
#Q33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select Outlet_type, avg(item_mrp) from sales
group by outlet_type
order by avg(item_mrp);

#Q34 Write an SQL query to show maximum MRP by Outlet_Type
select Outlet_type, max(item_mrp) from sales
group by outlet_type;

#Q35 Write an SQL query to show maximum Item_Weight by Item_Type
select Item_Type , max(Item_Weight) from sales
group by item_type;

#Q36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select Outlet_Establishment_Year , max(Item_Weight) from sales
group by Outlet_Establishment_Year;

#Q37 Write an SQL query to show minimum Item_Weight by Outlet_Type
select Outlet_type, min(item_weight) from sales
group by outlet_type;

#Q38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type , avg(item_weight) from sales
group by Outlet_Location_Type
order by avg(item_weight) desc;

#Q39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select Item_Type  , max(Item_Outlet_Sales) from sales
group by Item_Type;

#Q40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select Item_Type  , min(Item_Outlet_Sales) from sales
group by Item_Type;

#Q41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select Outlet_Establishment_Year  , min(Item_Outlet_Sales) from sales
group by Outlet_Establishment_Year;

#Q42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it 
#by descending order
select Outlet_Establishment_Year  , max(Item_Outlet_Sales) from sales
group by Outlet_Establishment_Year
order by max(Item_Outlet_Sales) desc;

#Q43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select Outlet_Size  , avg(Item_Outlet_Sales) from sales
group by Outlet_Size 
order by avg(Item_Outlet_Sales) desc;

#Q44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select outlet_type, avg(item_outlet_sales) from sales 
group by outlet_type;

#Q45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select outlet_type, max(item_outlet_sales) from sales 
group by outlet_type;

#Q46 Write an SQL query to show total Item_Outlet_Sales by Item_Type
select Item_Type , sum(item_outlet_sales) from sales 
group by item_type;

#Q47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select Item_Fat_Content, sum(Item_Outlet_Sales) from sales
group by Item_Fat_Content;

#Q48 Write an SQL query to show maximum Item_Visibility by Item_Type
select Item_Type , max(Item_Visibility) from sales 
group by item_type;

#Q49 Write an SQL query to show Minimum Item_Visibility by Item_Type
select Item_Type , min(Item_Visibility) from sales 
group by item_type;

#Q50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but 
#only WHERE Outlet_Location_Type is Tier 1
select item_type, sum(item_outlet_sales) from sales where Outlet_Location_Type in ('Tier 1')
group by item_type; 

#Q51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is 
#ONLY Low Fat & LF
select item_type, sum(item_outlet_sales) from sales where Item_Fat_Content in ('low fat','lf')
group by item_type;



