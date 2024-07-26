create database project;
use project;
SHOW TABLES; 
select * from videogamesales;

-- Region wise global sales
SELECT s.Region, SUM(s.Global_Sales) AS Total_Global_Sales
FROM videogamesales s
GROUP BY s.Region
order by Total_Global_Sales;

-- genre wise global sales
SELECT s.genre, SUM(s.Global_Sales) AS Total_Global_Sales
FROM videogamesales s
GROUP BY s.genre
order by Total_Global_Sales desc;

-- platform wise global sales
SELECT s.platform, SUM(s.Global_Sales) AS Total_Global_Sales
FROM videogamesales s
GROUP BY s.platform
order by Total_Global_Sales desc;

-- Publisher wise global sales and global profit
SELECT s.publisher, SUM(s.Global_Profit) AS Total_Global_Profit, SUM(s.Global_Sales) AS Total_Global_Sales
FROM videogamesales s
GROUP BY s.publisher
order by Total_Global_Sales desc;

-- year wise global sales
SELECT s.year, SUM(s.Global_Sales) AS Total_Global_Sales
FROM videogamesales s
GROUP BY s.year
order by Total_Global_Sales desc;

-- genre wise global sales and global profit
SELECT s.genre, SUM(s.Global_Sales) AS Total_Global_Sales, SUM(s.Global_Profit) AS Total_Global_Profit
FROM videogamesales s
GROUP BY s.genre
order by Total_Global_Profit desc;

