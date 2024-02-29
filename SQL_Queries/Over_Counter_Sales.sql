SELECT public."Invoices".invoice_id, invoice_date, invoice_type, item_id, product_description, product_quantity, invoice_subtotal,
sum(invoice_subtotal) OVER (ORDER BY invoice_date) AS total_revenue
FROM public."Invoices"
JOIN public."Invoice_Details" ON public."Invoices".invoice_id = public."Invoice_Details".invoice_id
JOIN public."Products" ON public."Invoice_Details".product_id = public."Products".product_id
WHERE invoice_type = 'Cash';