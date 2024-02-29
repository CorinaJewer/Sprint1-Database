SELECT public."Invoices".invoice_id, invoice_date, invoice_type, customer_first_name, customer_last_name, item_id, service_description, service_retail_price, invoice_subtotal, invoice_HST, invoice_total
FROM public."Invoices"
JOIN public."Customers" ON public."Invoices".customer_id = public."Customers".customer_id
JOIN "Invoice_Details" ON public."Invoices".invoice_id = "Invoice_Details".invoice_id
JOIN public."Services" ON public."Invoice_Details".service_id = public."Services".service_id
WHERE public."Invoices".invoice_type = 'Appointment'
ORDER BY invoice_id ASC;