--liquibase formatted sql
--changeset magda:1
CREATE TABLE instructor
( id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name character varying(20) NOT NULL,
    lastname character varying(30) NOT NULL,
    telephone integer NOT NULL
);