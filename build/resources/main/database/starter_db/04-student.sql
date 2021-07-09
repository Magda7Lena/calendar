--liquibase formatted sql
--changeset magda:1
CREATE TABLE public.student
( id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  name character varying(20) COLLATE pg_catalog."default" NOT NULL,
  lastname character varying(30) COLLATE pg_catalog."default" NOT NULL,
  telephone_number character varying(9) COLLATE pg_catalog."default" NOT NULL,
  CONSTRAINT student_pkey PRIMARY KEY (id))