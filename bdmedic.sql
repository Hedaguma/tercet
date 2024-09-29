--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: bdmedic; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA bdmedic;


ALTER SCHEMA bdmedic OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: medicos; Type: TABLE; Schema: bdmedic; Owner: postgres
--

CREATE TABLE bdmedic.medicos (
    nombre character varying,
    a_materno character varying,
    p_paterno character varying,
    clinica character varying,
    especialidad character varying
);


ALTER TABLE bdmedic.medicos OWNER TO postgres;

--
-- Data for Name: medicos; Type: TABLE DATA; Schema: bdmedic; Owner: postgres
--

COPY bdmedic.medicos (nombre, a_materno, p_paterno, clinica, especialidad) FROM stdin;
Laura Beatriz	Martínez	Lopez	Clínica Primavera	Medicina General
Javier Alejandro	Perez	Torres	Clínica del Mar	Ginecologia
Ana Isabel	González	Ruiz	Clínica Salud y Vida	Ortopedia
Carlos Alberto	Ramirez	Hernandez	Clínica del Valle	Odontologia
Sofía Elena	Lopez	Morales	Clínica San Juan	Reumatologia
Alejandro José	Torres	Castillo	Clínica Esperanza	Endocrinologia
Patricia Maria	Morales	Sanchez	Clínica del Valle	Geriatria
Manuel Enrique	Jimenez	Perez	Clínica del Mar	Medicinal General
Elena Gabriela	Fernandez	Diaz	Clínica Esperanza	Reumatologia
Fernando Antonio	Álvarez 	González	Clínica San Juan	Medicina General
\.


--
-- PostgreSQL database dump complete
--

