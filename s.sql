--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.2
-- Dumped by pg_dump version 9.3.2
-- Started on 2013-12-16 00:38:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 181 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 181
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 16552)
-- Name: Bolsa de trabajo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Bolsa de trabajo" (
    "cod trabajo" numeric NOT NULL,
    area text,
    empresa text,
    descripcion text
);


ALTER TABLE public."Bolsa de trabajo" OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16573)
-- Name: Comion de trabajo de titulo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Comion de trabajo de titulo" (
    "cod comision" numeric NOT NULL,
    area text,
    "año" numeric,
    rut_alumno numeric,
    rut_profesor numeric
);


ALTER TABLE public."Comion de trabajo de titulo" OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16539)
-- Name: Profesor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Profesor" (
    "Rut_profesor" numeric NOT NULL,
    nombre text,
    "fecha nacimiento" date,
    historial text,
    fono numeric,
    email text,
    "cod asignatura" numeric
);


ALTER TABLE public."Profesor" OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16609)
-- Name: administracion de curriculum; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "administracion de curriculum" (
    "cod adm curr" numeric NOT NULL,
    "año" numeric,
    fecha date,
    "curriculum pdf" text,
    rut_profesor numeric,
    rut_alumno numeric
);


ALTER TABLE public."administracion de curriculum" OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16627)
-- Name: administracion de evaluaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "administracion de evaluaciones" (
    cod_adm numeric NOT NULL,
    tipo text,
    "año" numeric,
    "cod asignatura" numeric,
    "rut profesor" numeric
);


ALTER TABLE public."administracion de evaluaciones" OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 16531)
-- Name: alumno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alumno (
    "Rut_alumno" numeric NOT NULL,
    nombre text,
    "año de ingreso" numeric,
    carrera text,
    edad numeric,
    "fecha de nacimiento" date,
    fono numeric,
    email text
);


ALTER TABLE public.alumno OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 16523)
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE asignatura (
    "cod asignatura" numeric NOT NULL,
    nombre text,
    semestre numeric
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16560)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario (
    rut_funcionario numeric NOT NULL,
    nombre text,
    cargo text,
    "año de ingreso" numeric,
    estudios text,
    fono numeric,
    email text,
    cod_trabajo numeric
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16663)
-- Name: horario de clases; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "horario de clases" (
    "cod horario" numeric NOT NULL,
    seccion numeric,
    horario text,
    fecha date,
    sala text,
    rut_profesor numeric,
    "cod asignatura" numeric,
    rut_funcionario numeric
);


ALTER TABLE public."horario de clases" OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16591)
-- Name: planificacion clase a clase; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "planificacion clase a clase" (
    "cod detalle" numeric NOT NULL,
    seccion numeric,
    fecha date,
    detalle text,
    rut_profesor numeric,
    cod_asignatura numeric
);


ALTER TABLE public."planificacion clase a clase" OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 16645)
-- Name: revista digital; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "revista digital" (
    num_revista numeric NOT NULL,
    "fecha publicacion" date,
    "fecha modificacion" date,
    articulo text,
    "cod asignatura" numeric,
    rut_profesor numeric
);


ALTER TABLE public."revista digital" OWNER TO postgres;

--
-- TOC entry 2019 (class 0 OID 16552)
-- Dependencies: 173
-- Data for Name: Bolsa de trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Bolsa de trabajo" ("cod trabajo", area, empresa, descripcion) FROM stdin;
\.


--
-- TOC entry 2021 (class 0 OID 16573)
-- Dependencies: 175
-- Data for Name: Comion de trabajo de titulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Comion de trabajo de titulo" ("cod comision", area, "año", rut_alumno, rut_profesor) FROM stdin;
\.


--
-- TOC entry 2018 (class 0 OID 16539)
-- Dependencies: 172
-- Data for Name: Profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Profesor" ("Rut_profesor", nombre, "fecha nacimiento", historial, fono, email, "cod asignatura") FROM stdin;
\.


--
-- TOC entry 2023 (class 0 OID 16609)
-- Dependencies: 177
-- Data for Name: administracion de curriculum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "administracion de curriculum" ("cod adm curr", "año", fecha, "curriculum pdf", rut_profesor, rut_alumno) FROM stdin;
\.


--
-- TOC entry 2024 (class 0 OID 16627)
-- Dependencies: 178
-- Data for Name: administracion de evaluaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "administracion de evaluaciones" (cod_adm, tipo, "año", "cod asignatura", "rut profesor") FROM stdin;
\.


--
-- TOC entry 2017 (class 0 OID 16531)
-- Dependencies: 171
-- Data for Name: alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alumno ("Rut_alumno", nombre, "año de ingreso", carrera, edad, "fecha de nacimiento", fono, email) FROM stdin;
\.


--
-- TOC entry 2016 (class 0 OID 16523)
-- Dependencies: 170
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignatura ("cod asignatura", nombre, semestre) FROM stdin;
\.


--
-- TOC entry 2020 (class 0 OID 16560)
-- Dependencies: 174
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY funcionario (rut_funcionario, nombre, cargo, "año de ingreso", estudios, fono, email, cod_trabajo) FROM stdin;
\.


--
-- TOC entry 2026 (class 0 OID 16663)
-- Dependencies: 180
-- Data for Name: horario de clases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "horario de clases" ("cod horario", seccion, horario, fecha, sala, rut_profesor, "cod asignatura", rut_funcionario) FROM stdin;
\.


--
-- TOC entry 2022 (class 0 OID 16591)
-- Dependencies: 176
-- Data for Name: planificacion clase a clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "planificacion clase a clase" ("cod detalle", seccion, fecha, detalle, rut_profesor, cod_asignatura) FROM stdin;
\.


--
-- TOC entry 2025 (class 0 OID 16645)
-- Dependencies: 179
-- Data for Name: revista digital; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "revista digital" (num_revista, "fecha publicacion", "fecha modificacion", articulo, "cod asignatura", rut_profesor) FROM stdin;
\.


--
-- TOC entry 1879 (class 2606 OID 16559)
-- Name: Bolsa de trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Bolsa de trabajo"
    ADD CONSTRAINT "Bolsa de trabajo_pkey" PRIMARY KEY ("cod trabajo");


--
-- TOC entry 1883 (class 2606 OID 16580)
-- Name: Comion de trabajo de titulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Comion de trabajo de titulo"
    ADD CONSTRAINT "Comion de trabajo de titulo_pkey" PRIMARY KEY ("cod comision");


--
-- TOC entry 1877 (class 2606 OID 16546)
-- Name: Profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Profesor"
    ADD CONSTRAINT "Profesor_pkey" PRIMARY KEY ("Rut_profesor");


--
-- TOC entry 1887 (class 2606 OID 16616)
-- Name: administracion de curriculum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "administracion de curriculum"
    ADD CONSTRAINT "administracion de curriculum_pkey" PRIMARY KEY ("cod adm curr");


--
-- TOC entry 1889 (class 2606 OID 16634)
-- Name: administracion de evaluaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "administracion de evaluaciones"
    ADD CONSTRAINT "administracion de evaluaciones_pkey" PRIMARY KEY (cod_adm);


--
-- TOC entry 1875 (class 2606 OID 16538)
-- Name: alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY ("Rut_alumno");


--
-- TOC entry 1873 (class 2606 OID 16530)
-- Name: asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY ("cod asignatura");


--
-- TOC entry 1881 (class 2606 OID 16567)
-- Name: funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (rut_funcionario);


--
-- TOC entry 1893 (class 2606 OID 16670)
-- Name: horario de clases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "horario de clases"
    ADD CONSTRAINT "horario de clases_pkey" PRIMARY KEY ("cod horario");


--
-- TOC entry 1885 (class 2606 OID 16598)
-- Name: planificacion clase a clase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "planificacion clase a clase"
    ADD CONSTRAINT "planificacion clase a clase_pkey" PRIMARY KEY ("cod detalle");


--
-- TOC entry 1891 (class 2606 OID 16652)
-- Name: revista digital_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "revista digital"
    ADD CONSTRAINT "revista digital_pkey" PRIMARY KEY (num_revista);


--
-- TOC entry 1896 (class 2606 OID 16581)
-- Name: Comion de trabajo de titulo_rut_alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Comion de trabajo de titulo"
    ADD CONSTRAINT "Comion de trabajo de titulo_rut_alumno_fkey" FOREIGN KEY (rut_alumno) REFERENCES alumno("Rut_alumno");


--
-- TOC entry 1897 (class 2606 OID 16586)
-- Name: Comion de trabajo de titulo_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Comion de trabajo de titulo"
    ADD CONSTRAINT "Comion de trabajo de titulo_rut_profesor_fkey" FOREIGN KEY (rut_profesor) REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 1894 (class 2606 OID 16547)
-- Name: Profesor_cod asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Profesor"
    ADD CONSTRAINT "Profesor_cod asignatura_fkey" FOREIGN KEY ("cod asignatura") REFERENCES asignatura("cod asignatura");


--
-- TOC entry 1901 (class 2606 OID 16622)
-- Name: administracion de curriculum_rut_alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "administracion de curriculum"
    ADD CONSTRAINT "administracion de curriculum_rut_alumno_fkey" FOREIGN KEY (rut_alumno) REFERENCES alumno("Rut_alumno");


--
-- TOC entry 1900 (class 2606 OID 16617)
-- Name: administracion de curriculum_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "administracion de curriculum"
    ADD CONSTRAINT "administracion de curriculum_rut_profesor_fkey" FOREIGN KEY (rut_profesor) REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 1903 (class 2606 OID 16640)
-- Name: administracion de evaluaciones_cod asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "administracion de evaluaciones"
    ADD CONSTRAINT "administracion de evaluaciones_cod asignatura_fkey" FOREIGN KEY ("cod asignatura") REFERENCES asignatura("cod asignatura");


--
-- TOC entry 1902 (class 2606 OID 16635)
-- Name: administracion de evaluaciones_rut profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "administracion de evaluaciones"
    ADD CONSTRAINT "administracion de evaluaciones_rut profesor_fkey" FOREIGN KEY ("rut profesor") REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 1895 (class 2606 OID 16568)
-- Name: funcionario_cod_trabajo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT funcionario_cod_trabajo_fkey FOREIGN KEY (cod_trabajo) REFERENCES "Bolsa de trabajo"("cod trabajo");


--
-- TOC entry 1907 (class 2606 OID 16676)
-- Name: horario de clases_cod asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "horario de clases"
    ADD CONSTRAINT "horario de clases_cod asignatura_fkey" FOREIGN KEY ("cod asignatura") REFERENCES asignatura("cod asignatura");


--
-- TOC entry 1908 (class 2606 OID 16681)
-- Name: horario de clases_rut_funcionario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "horario de clases"
    ADD CONSTRAINT "horario de clases_rut_funcionario_fkey" FOREIGN KEY (rut_funcionario) REFERENCES funcionario(rut_funcionario);


--
-- TOC entry 1906 (class 2606 OID 16671)
-- Name: horario de clases_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "horario de clases"
    ADD CONSTRAINT "horario de clases_rut_profesor_fkey" FOREIGN KEY (rut_profesor) REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 1899 (class 2606 OID 16604)
-- Name: planificacion clase a clase_cod_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "planificacion clase a clase"
    ADD CONSTRAINT "planificacion clase a clase_cod_asignatura_fkey" FOREIGN KEY (cod_asignatura) REFERENCES asignatura("cod asignatura");


--
-- TOC entry 1898 (class 2606 OID 16599)
-- Name: planificacion clase a clase_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "planificacion clase a clase"
    ADD CONSTRAINT "planificacion clase a clase_rut_profesor_fkey" FOREIGN KEY (rut_profesor) REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 1905 (class 2606 OID 16658)
-- Name: revista digital_cod asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "revista digital"
    ADD CONSTRAINT "revista digital_cod asignatura_fkey" FOREIGN KEY ("cod asignatura") REFERENCES asignatura("cod asignatura");


--
-- TOC entry 1904 (class 2606 OID 16653)
-- Name: revista digital_rut_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "revista digital"
    ADD CONSTRAINT "revista digital_rut_profesor_fkey" FOREIGN KEY (rut_profesor) REFERENCES "Profesor"("Rut_profesor");


--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-12-16 00:38:04

--
-- PostgreSQL database dump complete
--

