  use amazon;
  select * from Dashboard;
  select * from Dashboard where Quantity is NULL;
  
  
  select * from Dashboard where Region='Southeast';
  select * from Dashboard where Salesperson='Watson' and Products='Printer';
  ----EDA

  select COUNT(*) as totalcol from INFORMATION_SCHEMA.columns where table_name='Dashboard';
  select COUNT(*) as totalrow from Dashboard;

  select distinct(Salesperson) Employees from Dashboard;
  select distinct(Products) Products from Dashboard;
  select count(distinct(State)) from Dashboard;

  select Salesperson,COUNT(*) as sales from Dashboard
  group by Salesperson
  order by sales desc;

  select * from Dashboard where Company_Name='Music Plus';

  select Company_Name,SUM(Total_Sales) AS Total from Dashboard
  group by Company_Name
  order by Total desc;

  select Salesperson,SUM(Total_Sales) AS Total,COUNT(*) as Sales from Dashboard
  group by Salesperson
  order by Total,Sales desc;

  select Month,SUM(Total_Sales)as monthlyrel from Dashboard
  group by Month
  order by monthlyrel desc;

 select Order_Date,Shipped_Date,DATEDIFF(day,Order_Date,Shipped_Date)As Day_Toship from Dashboard;
  
 select Products,SUM(Quantity) as Total from Dashboard
 group by Products
 order by Total desc;

  select Products,SUM(Total_Sales) AS Total from Dashboard
  group by Products
  order by Total desc;

 select * from Dashboard where Products='Music player';

 select Products,AVG(Total_Sales) as average from Dashboard
 group by Products
 order by average desc;

 select State,COUNT(*) as totals,SUM(Total_Sales) as total from Dashboard
 group by State
 order by totals asc,total desc;
 
   select Format(Order_Date,'MMMM-yyyy') AS SalesMonth, 
    SUM(Quantity * Price) AS MonthlyRevenue
   from  Dashboard 
   group by FORMAT(Order_Date,'MMMM-yyyy')
   order by SalesMonth Desc;

   
  