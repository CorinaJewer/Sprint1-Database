SELECT public."Invoices".invoice_id, invoice_date, invoice_type, public."Products".product_id, description, quantity, subtotal,
sum(subtotal) OVER (ORDER BY invoice_date) AS total_revenue
FROM public."Invoices"
JOIN public."Invoices_Products_Junction" ON public."Invoices".invoice_id = public."Invoices_Products_Junction".invoice_id
JOIN public."Products" ON public."Invoices_Products_Junction".product_id = public."Products".product_id
WHERE invoice_type = 'Cash';