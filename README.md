#  E-commerce Sales & Customer Analytics

##  Project Overview

An online retail store transitioned from manual data tracking to a digital system to improve **sales performance and revenue growth**.
This project leverages **SQL and Power BI** to analyze business data and generate actionable insights on customers, products, and regional performance.

---

##  Business Objectives

* Improve sales and revenue performance
* Identify high-value customers and buying patterns
* Analyze product and category performance
* Track growth trends over time
* Optimize regional and shipping profitability

---
## Dataset used (link) - 

[Dataset](https://github.com/bhavesh-adlak/Online-Retail-Sales-Performance-Analysis/blob/main/ANALYTICS-DATASET.xls)

---
##  Tools & Technologies

* **SQL:** Joins, CTEs, Window Functions, Subqueries, Stored Procedures
* **Power BI:** DAX, Data Modeling, Power Query, Data Visualization

---

## SQL Analysis

### Key Insights Derived:

* Identified **customers with total sales above average** to target high-value segments
* Determined **customers with maximum number of orders in each category**
* Extracted **Top 3 products per category** based on sales using window functions
* Calculated **Year-over-Year (YoY) sales growth** to measure business performance
* Evaluated **most profitable shipping mode across regions**

---

###  Advanced SQL Implementation

####  Stored Procedure: `Get_Customer_Orders`

Developed a stored procedure to generate detailed customer-level insights.

**Input:**

* `CustomerID`

**Returns:**

* `OrderDate`
* `TotalAmount`
* `TotalOrders` – Total number of orders by the customer
* `AvgAmount` – Average order value
* `LastOrderDate` – Most recent purchase date
* `DaysSinceLastOrder` – Recency of customer activity

---

####  User-Defined Function

* Created a function to calculate **difference between two dates**
* Used to compute **Days Since Last Order** for customer behavior analysis

---

##  Power BI Dashboard

### Key Visualizations:

*  **Sales & Profit Trend Over Time**
*  **Top 10 Customers by Profit Contribution**
*  **Regional Performance Dashboard**
* **Map View**: Profit distribution by region
* **Bar Chart**: Sales comparison by region

---

###  KPI Metrics:

* Total Sales
* Total Profit
* Profit Ratio (%)

---

###  Profitability Analysis:

* Built a **Category–Subcategory Matrix**
* Identified **loss-making subcategories** within each category
* Highlighted areas for cost optimization and improved pricing strategy

---

##  Key Insights

* Despite a decline in sales in 2015 compared to 2014, profit showed an increase, indicating improved profitability.
* The highest growth in profit was observed between 2015 and 2016, with a larger margin compared to other years.
* Technology is the most profitable Category, while Furniture underperforms in terms of profit.
* The West region contributes the highest sales and profit.


---

##  Business Impact

* Enabled **data-driven decision-making** through interactive dashboards
* Identified opportunities to **increase revenue and reduce losses**
* Improved understanding of **customer behavior and product performance**

---

##  Dashboard Preview


[![Dashboard](Images/dashboard.png)](https://github.com/bhavesh-adlak/Online-Retail-Sales-Performance-Analysis/blob/main/Screenshot%202026-03-30%20105434.png)

---

##  Conclusion

This project demonstrates how **SQL and Power BI** can be used together to transform raw data into meaningful insights, helping businesses improve performance, optimize operations, and drive growth.

---
