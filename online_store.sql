create database online_store;
use online_store
Select * from Orders;
Select * from returns;
Select * from people;

--Identify customers whose total sales are above the average sales of all customers
SELECT Customer_Name
FROM orders
GROUP BY Customer_Name
HAVING SUM(sales) > (
        SELECT AVG(customer_total)
        FROM (
            SELECT SUM(sales) AS customer_total
            FROM orders
            GROUP BY Customer_Name
        ) AS avg_table
);



 --Find the customer who has made the maximum number of  orders in each category:
with customer_orders as( Select category,Customer_Name,count(*) as total_orders from orders 
group by category,Customer_Name)
SELECT *
FROM (SELECT *,
ROW_NUMBER() OVER(PARTITION BY category ORDER BY total_orders DESC) AS rn FROM customer_orders
) t
WHERE rn = 1;


--Find the top 3 products in each category based on their sales.
select category,Product_Name,total_sales
from(Select category,Product_name,sum(sales) as total_sales,
Row_number() over (partition by category order by sum(sales) desc) as rn from orders 
group by category,product_name)t
where rn<=3;

 --Calculate year-over-year (YoY) sales growth 
with yearly_sales as ( select year(order_date)as year,sum(sales) as total_sales from orders group by year(order_date) )
Select*, lag(total_sales) over (order by year) as previous_year_sales,
(total_sales-lag(total_sales) over (order by year))/lag(total_sales) over (order by year) *100 as YOY_growth from yearly_sales;

--Find the most profitable shipping mode for each region
select region,ship_mode,total_profit
from(select region,ship_mode,Sum(profit) as total_profit,
ROW_NUMBER () over (partition by region order by Sum(profit)) as rn
from orders
group by region,Ship_Mode)t
where rn=1;

--create function
CREATE FUNCTION dbo.GetDaysBetweenDates
(
    @StartDate DATE,
    @EndDate DATE
)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(DAY, @StartDate, @EndDate)
END
--creating procedure
Create procedure get_Customer_orders
@CustomerID VARCHAR(20)
as begin
Select order_date,sum(sales)as total_amount,
Count(*) over() as total_orders,
avg(sum(sales)) over() as AvgAmount,
max(Order_Date) over() as LastOrderDate,
 dbo.GetDaysBetweenDates(
        MAX(Order_Date) OVER(), 
        GETDATE()
    ) AS DaysSinceLastOrder
FROM Orders
WHERE Customer_ID = @CustomerID
GROUP BY Order_Date
END
EXEC get_Customer_orders 'BH-11710'
