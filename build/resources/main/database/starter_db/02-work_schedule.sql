--liquibase formatted sql
--changeset magda:1
CREATE TABLE public.work_schedule
(id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
    instructor_id bigint NOT NULL,
    date date NOT NULL,
    time_start time(6) without time zone NOT NULL,
    time_end time(6) without time zone NOT NULL,
    CONSTRAINT id PRIMARY KEY (id),
    CONSTRAINT instructor_id FOREIGN KEY (instructor_id)
        REFERENCES public.instructor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)