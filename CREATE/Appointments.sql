CREATE TABLE public."Appointments"
(
    appointment_id serial NOT NULL,
    customer_id integer NOT NULL,
    employee_id integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
	customizations character varying(320),
    PRIMARY KEY (appointment_id),
    CONSTRAINT "appointments_customer_id_FK" FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE,
	CONSTRAINT "appointments_employee_id_FK" FOREIGN KEY (employee_id)
        REFERENCES public."Employees" (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public."Appointments"
    OWNER to postgres;