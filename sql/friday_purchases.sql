SELECT 
    DATEPART(WEEK, date) AS week_num,
    AVG(amount_spent) AS average_amount_spent
FROM 
    user_purchases
WHERE 
    day_name = 'Friday' 
    AND DATEPART(MONTH, date) <= 3
GROUP BY 
    DATEPART(WEEK, date)
ORDER BY 
    week_num;
