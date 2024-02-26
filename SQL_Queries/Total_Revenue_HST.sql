SELECT invoice_id, invoice_date, subtotal, hst, total,
	SUM(hst) OVER (ORDER BY invoice_date) AS total_hst,
	SUM(subtotal) OVER (ORDER BY invoice_date) AS total_revenue
FROM 
    public."Invoices" 
WHERE 
    invoice_date BETWEEN '2024/02/01' AND '2024/02/25';