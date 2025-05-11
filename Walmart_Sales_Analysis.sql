USE retail_sales;


-- 1. Top 5 Best-Selling Products
SELECT Product_line, SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY Product_line
ORDER BY Total_Sales DESC
LIMIT 5;

-- 2. Month-wise Total Sales
SELECT 
    DATE_FORMAT(MIN(Date), '%M') AS Month_Name,
    YEAR(Date) AS Year,
    SUM(Total) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    YEAR(Date), MONTH(Date)
ORDER BY 
    Year, MONTH(Date);

-- 3. Branch-wise Sales Comparison
SELECT Branch, SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY Branch
ORDER BY Total_Sales DESC;

-- 4. Customer Types Analysis (Member vs Normal)
SELECT Customer_type, COUNT(*) AS Number_of_Customers
FROM sales_data
GROUP BY Customer_type;

-- 5. Payment Method Usage Count
SELECT Payment, COUNT(*) AS Payment_Count
FROM sales_data
GROUP BY Payment;

