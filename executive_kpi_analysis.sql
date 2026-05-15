-- Executive Revenue Summary
SELECT 
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    AVG(profit_margin) AS avg_profit_margin
FROM sales_data;

-- Monthly Revenue Performance
SELECT 
    sales_month,
    SUM(revenue) AS monthly_revenue,
    SUM(profit) AS monthly_profit
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;

-- Top Performing Regions
SELECT 
    region,
    SUM(revenue) AS regional_revenue,
    SUM(profit) AS regional_profit
FROM sales_data
GROUP BY region
ORDER BY regional_revenue DESC;

-- Customer Segment Analysis
SELECT 
    customer_segment,
    COUNT(customer_id) AS total_customers,
    SUM(revenue) AS segment_revenue
FROM sales_data
GROUP BY customer_segment
ORDER BY segment_revenue DESC;

-- Product Performance Analysis
SELECT 
    product_category,
    SUM(revenue) AS category_revenue,
    SUM(quantity_sold) AS total_units_sold
FROM sales_data
GROUP BY product_category
ORDER BY category_revenue DESC;

-- Operational KPI Metrics
SELECT
    sales_month,
    AVG(order_fulfillment_days) AS avg_fulfillment_time,
    AVG(customer_satisfaction_score) AS avg_customer_satisfaction
FROM operational_metrics
GROUP BY sales_month
ORDER BY sales_month;
