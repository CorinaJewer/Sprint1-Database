CREATE TABLE public."Invoices"
(
    invoice_id serial NOT NULL,
    invoice_type character varying(64) NOT NULL,
    appointment_id integer,
    customer_id integer NOT NULL,
    invoice_date date NOT NULL,
    subtotal money NOT NULL,
    hst money NOT NULL,
    total money NOT NULL,
    PRIMARY KEY (invoice_id),
    CONSTRAINT "invoices_customer_id_FK" FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE,
	CONSTRAINT "invoices_appointment_id_FK" FOREIGN KEY (appointment_id)
        REFERENCES public."Appointments" (appointment_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Invoices"
    OWNER to postgres;