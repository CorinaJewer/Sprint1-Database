CREATE TABLE public."Customers"
(
    customer_id serial NOT NULL,
    address_id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(200) NOT NULL,
    phone_num character varying(24) NOT NULL,
    PRIMARY KEY (customer_id),
    CONSTRAINT "customers_address_id_FK" FOREIGN KEY (address_id)
        REFERENCES public."Addresses" (address_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Customers"
    OWNER to postgres;