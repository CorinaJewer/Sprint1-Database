SELECT customer_id,customer_first_name, customer_last_name, email, phone_num,address_line1, address_line2, city, province, postal_code
FROM public."Customers" 
JOIN public."Addresses" ON public."Customers".address_id = public."Addresses".address_id;