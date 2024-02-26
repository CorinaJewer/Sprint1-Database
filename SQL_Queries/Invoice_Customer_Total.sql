SELECT invoice_id, invoice_type, invoice_date, customer_first_name,
       customer_last_name, subtotal, hst, total
FROM public."Invoices"
JOIN public."Customers" ON public."Invoices".customer_id = public."Customers".customer_id
ORDER BY invoice_date DESC;