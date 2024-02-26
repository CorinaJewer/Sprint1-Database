SELECT "Appointments".appointment_id, date, time, customizations, description, position, employee_first_name, customer_first_name, customer_last_name
FROM "Appointments"
JOIN "Customers" ON "Appointments".customer_id = "Customers".customer_id
JOIN "Employees" ON "Appointments".employee_id = "Employees".employee_id
JOIN "Appointments_Services_Junction" ON "Appointments".appointment_id = "Appointments_Services_Junction".appointment_id
JOIN "Services" ON "Appointments_Services_Junction".service_id = "Services".service_id
WHERE "Appointments".date >= '2024-02-26'AND "Appointments".date <= '2024-03-03';