CREATE TABLE public."Services"
(
    service_id serial NOT NULL,
    service_type character varying(100) NOT NULL,
    service_description character varying(240) NOT NULL,
    service_retail_price money NOT NULL,
    duration_minutes integer NOT NULL,
    PRIMARY KEY (service_id)
);

ALTER TABLE IF EXISTS public."Services"
    OWNER to postgres;