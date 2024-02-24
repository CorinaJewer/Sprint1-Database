CREATE TABLE public."Products_Services_Junction"
(
    product_id integer NOT NULL,
    service_id integer NOT NULL,
    quanity integer NOT NULL,
    PRIMARY KEY (product_id, service_id),
    CONSTRAINT "products_services_service_id_FK" FOREIGN KEY (service_id)
        REFERENCES public."Services" (service_id) MATCH SIMPLE,
 	CONSTRAINT "products_services_product_id_FK" FOREIGN KEY (product_id)
		REFERENCES public."Products" (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Products_Services_Junction"
    OWNER to postgres;