CREATE TABLE public."Employees"
(
    employee_id serial NOT NULL,
    address_id integer NOT NULL,
    employee_first_name character varying(100) NOT NULL,
    employee_last_name character varying(100) NOT NULL,
    email character varying(200) NOT NULL,
    phone_num character varying(24) NOT NULL,
    "position" character varying(100) NOT NULL,
    rate_of_pay money NOT NULL,
    PRIMARY KEY (employee_id),
    CONSTRAINT "employees_address_id_FK" FOREIGN KEY (address_id)
        REFERENCES public."Addresses" (address_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Employees"
    OWNER to postgres;