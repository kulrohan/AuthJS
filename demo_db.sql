--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: data; Type: TABLE; Schema: public; Owner: normaluser
--

CREATE TABLE public.data (
    entry integer,
    data text
);


ALTER TABLE public.data OWNER TO normaluser;

--
-- Name: data_v2; Type: TABLE; Schema: public; Owner: anonymous
--

CREATE TABLE public.data_v2 (
    entry integer,
    data text
);


ALTER TABLE public.data_v2 OWNER TO anonymous;

--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: normaluser
--

COPY public.data (entry, data) FROM stdin;
1	this is  data
2	this is some more data
3	this is more data
4	here is more data
5	even more data
\.


--
-- Data for Name: data_v2; Type: TABLE DATA; Schema: public; Owner: anonymous
--

COPY public.data_v2 (entry, data) FROM stdin;
1	this is  data
1	this is more data
1	this is some more data
1	here is more data
1	more data...
\.


--
-- PostgreSQL database dump complete
--

