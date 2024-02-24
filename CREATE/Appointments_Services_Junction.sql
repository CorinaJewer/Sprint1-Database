CREATE TABLE public."Appointments_Services_Junction"
(
    appointment_id integer NOT NULL,
    service_id integer NOT NULL,
    notes character varying(360),
    CONSTRAINT "Appointments_Services_Junction_pkey" PRIMARY KEY (appointment_id, service_id),
    CONSTRAINT "appointments_appointment_id_FK" FOREIGN KEY (appointment_id)
        REFERENCES public."Appointments" (appointment_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "appointments_service_id_FK" FOREIGN KEY (service_id)
        REFERENCES public."Services" (service_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

ALTER TABLE IF EXISTS public."Appointments_Services_Junction"
    OWNER to postgres;