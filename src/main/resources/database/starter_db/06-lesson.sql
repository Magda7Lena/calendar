--liquibase formatted sql
--changeset magda:1
CREATE TABLE public.lesson
(id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
    product_id bigint NOT NULL,
    instructor_id bigint NOT NULL,
    date date NOT NULL,
    time_start time without time zone NOT NULL,
    time_end time without time zone NOT NULL,
    description character varying(300) COLLATE pg_catalog."default",
    CONSTRAINT lesson_pkey PRIMARY KEY (id),
    CONSTRAINT instructor_id FOREIGN KEY (instructor_id)
        REFERENCES public.instructor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT product_id FOREIGN KEY (product_id)
        REFERENCES public.product (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION)