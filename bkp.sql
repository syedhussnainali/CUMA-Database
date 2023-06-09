--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- Name: faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.faculty ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.faculty_id_seq
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: login_uwin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login_uwin (
    id integer NOT NULL,
    uwinid character varying NOT NULL,
    password character varying NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL
);


ALTER TABLE public.login_uwin OWNER TO postgres;

--
-- Name: login_uwin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.login_uwin ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.login_uwin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ppm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ppm (
    project_id bigint NOT NULL,
    program_id bigint NOT NULL
);


ALTER TABLE public.ppm OWNER TO postgres;

--
-- Name: program; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.program (
    id bigint NOT NULL,
    name text,
    academic_level text,
    faculty_id bigint,
    doc_id text,
    rev_date date
);


ALTER TABLE public.program OWNER TO postgres;

--
-- Name: program_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.program ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.program_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: programuga; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programuga (
    id bigint NOT NULL,
    project_id bigint,
    description text,
    ugaalign text
);


ALTER TABLE public.programuga OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id integer NOT NULL,
    name character varying NOT NULL,
    owner text NOT NULL,
    member text,
    guests text
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.project ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: projectuga_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.programuga ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.projectuga_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (id, name) FROM stdin;
1	Arts, Humanities And Social Sciences
2	Business
3	\nEducation\n
4	Engineering
5	Human Kinetics\n
6	Law\n
7	Nursing
8	Science
\.


--
-- Data for Name: login_uwin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.login_uwin (id, uwinid, password, firstname, lastname) FROM stdin;
1	patel4r4@uwindsor.ca	preet	Preet	Patel\n
\.


--
-- Data for Name: ppm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ppm (project_id, program_id) FROM stdin;
\.


--
-- Data for Name: program; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.program (id, name, academic_level, faculty_id, doc_id, rev_date) FROM stdin;
1	Master of Applied Computing	Graduate	8	sljfnfk	2000-11-05
\.


--
-- Data for Name: programuga; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programuga (id, project_id, description, ugaalign) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, name, owner, member, guests) FROM stdin;
1	anjali	anjalii	cuma	cuma
\.


--
-- Name: faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculty_id_seq', 9, true);


--
-- Name: login_uwin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.login_uwin_id_seq', 1, true);


--
-- Name: program_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.program_id_seq', 1, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_id_seq', 1, true);


--
-- Name: projectuga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projectuga_id_seq', 1, false);


--
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id);


--
-- Name: login_uwin login_uwin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login_uwin
    ADD CONSTRAINT login_uwin_pkey PRIMARY KEY (id);


--
-- Name: program program_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.program
    ADD CONSTRAINT program_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: programuga projectuga_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programuga
    ADD CONSTRAINT projectuga_pkey PRIMARY KEY (id);


--
-- Name: fki_faculty_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_faculty_id ON public.program USING btree (faculty_id);


--
-- Name: fki_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_project_id ON public.programuga USING btree (project_id);


--
-- Name: program faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.program
    ADD CONSTRAINT faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculty(id) NOT VALID;


--
-- Name: ppm program_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ppm
    ADD CONSTRAINT program_id FOREIGN KEY (program_id) REFERENCES public.program(id) NOT VALID;


--
-- Name: ppm project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ppm
    ADD CONSTRAINT project_id FOREIGN KEY (project_id) REFERENCES public.project(id) NOT VALID;


--
-- Name: programuga project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programuga
    ADD CONSTRAINT project_id FOREIGN KEY (project_id) REFERENCES public.project(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

