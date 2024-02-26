SELECT customer_first_name, customer_last_name, SUM(total) AS total_spending
FROM public."Invoices"
JOIN public."Customers" ON public."Invoices".customer_id = public."Customers".customer_id
GROUP BY customer_first_name, customer_last_name
ORDER BY total_spending DESC;