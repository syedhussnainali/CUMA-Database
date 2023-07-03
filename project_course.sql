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
-- Name: project_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_course (
    id bigint DEFAULT nextval('public.project_course_seq'::regclass) NOT NULL,
    project_id bigint NOT NULL,
    course_code text NOT NULL,
    also_known_as text,
    formerly_known_as text,
    name text NOT NULL,
    document_id text,
    revision_start_date date NOT NULL,
    latest_modified date,
    state text
);


ALTER TABLE public.project_course OWNER TO postgres;

--
-- Data for Name: project_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_course (id, project_id, course_code, also_known_as, formerly_known_as, name, document_id, revision_start_date, latest_modified, state) FROM stdin;
1	19	test-100			test course	\N	2021-06-11	\N	Draft
\.


--
-- Name: project_course project_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_course
    ADD CONSTRAINT project_course_pkey PRIMARY KEY (id);


--
-- Name: project_course project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_course
    ADD CONSTRAINT project_id FOREIGN KEY (project_id) REFERENCES public.project(id);


--
-- PostgreSQL database dump complete
--

