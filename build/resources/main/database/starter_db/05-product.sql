--liquibase formatted sql
--changeset magda:1
CREATE TABLE public.product
(id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
    product_type_id bigint NOT NULL,
    student_id bigint NOT NULL,
    hours_left smallint NOT NULL,
    price real NOT NULL,
    lessons_hours smallint NOT NULL,
    book_online boolean NOT NULL,
    is_payed boolean NOT NULL,
    CONSTRAINT product_pkey PRIMARY KEY (id),
    CONSTRAINT product_type FOREIGN KEY (product_type_id)
        REFERENCES product_type (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_id FOREIGN KEY (student_id)
        REFERENCES public.student (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION)