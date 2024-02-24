CREATE TABLE public."Invoices_Products_Junction"
(
    invoice_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    CONSTRAINT "Invoices_Products_Junction_pkey" PRIMARY KEY (invoice_id, product_id),
    CONSTRAINT "invoices_products_invoice_id_FK" FOREIGN KEY (invoice_id)
        REFERENCES public."Invoices" (invoice_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "invoices_products_product_id_FK" FOREIGN KEY (product_id)
        REFERENCES public."Products" (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE IF EXISTS public."Invoices_Products_Junction"
    OWNER to postgres;