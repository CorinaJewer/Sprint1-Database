SELECT "Products".product_id, product_name, retail_price, cost, quantity_in_stock, total_sold
FROM "Products"
JOIN "Inventory" ON "Products".product_id = "Inventory".product_id;