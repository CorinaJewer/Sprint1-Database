CREATE TABLE public."Inventory"
(
    inventory_id serial NOT NULL,
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    cost money NOT NULL,
    quanity_in_stock integer NOT NULL,
    total_sold integer NOT NULL,
    PRIMARY KEY (inventory_id),
    CONSTRAINT "inventory_product_id_FK" FOREIGN KEY (product_id)
        REFERENCES public."Products" (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Inventory"
    OWNER to postgres;