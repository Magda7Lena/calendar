--liquibase formatted sql
--changeset magda:1
CREATE TABLE public.product_type
(id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    description character varying(150) COLLATE pg_catalog."default",
    category character varying(2) COLLATE pg_catalog."default" NOT NULL,
    price real NOT NULL,
    lesson_hours smallint NOT NULL,
    CONSTRAINT product_type_pkey PRIMARY KEY (id))