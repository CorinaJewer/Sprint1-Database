CREATE TABLE public."Addresses"
(
    address_id serial NOT NULL,
    address_line1 character varying(240) NOT NULL,
    address_line2 character varying(240),
    city character varying(100) NOT NULL,
    province character varying(100) NOT NULL,
    postal_code character varying(8) NOT NULL,
    PRIMARY KEY (address_id)
);

ALTER TABLE IF EXISTS public."Addresses"
    OWNER to postgres;