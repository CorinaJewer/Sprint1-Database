SELECT "Appointments".appointment_id, date, time, customer_first_name, customer_last_name, phone_num, email
FROM "Appointments"
JOIN "Customers" ON "Appointments".customer_id = "Customers".customer_id
WHERE date = '2024-03-04'
ORDER BY time ASC;