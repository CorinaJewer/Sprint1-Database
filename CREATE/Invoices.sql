CREATE TABLE public."Invoices"
(
    invoice_id serial NOT NULL,
    invoice_type character varying(64) NOT NULL,
    customer_id integer NOT NULL,
    invoice_date date NOT NULL,
    invoice_subtotal money NOT NULL,
    invoice_hst money NOT NULL,
    invoice_total money NOT NULL,
    PRIMARY KEY (invoice_id),
    CONSTRAINT "invoices_customer_id_FK" FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE,
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Invoices"
    OWNER to postgres;