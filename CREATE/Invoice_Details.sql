CREATE public."Invoice_Details"
(
    item_id serial NOT NULL,
    invoice_id integer NOT NULL,
    product_id integer,
    service_id integer,
    product_quantity integer,
    CONSTRAINT "Invoice_Details_pkey" PRIMARY KEY (item_id),
    CONSTRAINT "invoice_details-product_id_FK" FOREIGN KEY (product_id)
        REFERENCES public."Products" (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "invoice_details_invoice_id_FK" FOREIGN KEY (invoice_id)
        REFERENCES public."Invoices" (invoice_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "invoice_details_service_id_FK" FOREIGN KEY (service_id)
        REFERENCES public."Services" (service_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE IF EXISTS public."Invoice_Details"
    OWNER to postgres;