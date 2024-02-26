SELECT public."Employees".employee_id, employee_first_name, employee_last_name, address_line1, address_line2, city, province, postal_code, email, phone_num
FROM public."Employees"
JOIN public."Addresses" ON public."Employees".address_id = public."Addresses".address_id;