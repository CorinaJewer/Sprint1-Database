CREATE TABLE public."Products"
(
    product_id serial NOT NULL,
    product_name character varying(100) NOT NULL,
    product_description character varying(240) NOT NULL,
    product_retail_price money NOT NULL,
    PRIMARY KEY (product_id)
);

ALTER TABLE IF EXISTS public."Products"
    OWNER to postgres;