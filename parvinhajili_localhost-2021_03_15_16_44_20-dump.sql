--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

DROP DATABASE IF EXISTS parvinhajili;
--
-- Name: parvinhajili; Type: DATABASE; Schema: -; Owner: parvinhajili
--

CREATE DATABASE parvinhajili WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE parvinhajili OWNER TO parvinhajili;

\connect parvinhajili

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
-- Name: course_user; Type: TABLE; Schema: public; Owner: parvinhajili
--

CREATE TABLE public.course_user (
    enroll_id integer NOT NULL,
    user_email character varying,
    course_id integer
);


ALTER TABLE public.course_user OWNER TO parvinhajili;

--
-- Name: course_user_enroll_id_seq; Type: SEQUENCE; Schema: public; Owner: parvinhajili
--

CREATE SEQUENCE public.course_user_enroll_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_user_enroll_id_seq OWNER TO parvinhajili;

--
-- Name: course_user_enroll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: parvinhajili
--

ALTER SEQUENCE public.course_user_enroll_id_seq OWNED BY public.course_user.enroll_id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: parvinhajili
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying
);


ALTER TABLE public.courses OWNER TO parvinhajili;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: parvinhajili
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO parvinhajili;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: parvinhajili
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: parvinhajili
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying,
    pass character varying,
    country character varying,
    city character varying,
    gender character varying,
    name character varying,
    surname character varying,
    age character varying
);


ALTER TABLE public.users OWNER TO parvinhajili;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: parvinhajili
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO parvinhajili;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: parvinhajili
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: course_user enroll_id; Type: DEFAULT; Schema: public; Owner: parvinhajili
--

ALTER TABLE ONLY public.course_user ALTER COLUMN enroll_id SET DEFAULT nextval('public.course_user_enroll_id_seq'::regclass);


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: parvinhajili
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: parvinhajili
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: course_user; Type: TABLE DATA; Schema: public; Owner: parvinhajili
--

COPY public.course_user (enroll_id, user_email, course_id) FROM stdin;
1	nijat.ahmadli@tourismboard.az	1
2	nijat.ahmadli@tourismboard.az	4
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: parvinhajili
--

COPY public.courses (course_id, course_name) FROM stdin;
1	Math
2	PHY
3	Safety
4	Test
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: parvinhajili
--

COPY public.users (user_id, email, pass, country, city, gender, name, surname, age) FROM stdin;
2	nijat.ahmadli@tourismboard.az	612eeab9024bfb733a1bb626524d40d7ace1c637097bf76d36d9395e269f4170	Azerbaijan	Baku	Male	Nijat	Mammadov	58
1	phajili2021@ada.edu.az	162e3973ecf8a77629bbf7c8faaf28c13f99d4e7f1affadc616731276ee1d07a	Azerbaijan	Baku	Female	Parvin	Hajili	22
3		e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855						
4		e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855						
5		e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855						
6		e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855	\N	\N	\N	\N	\N	\N
7		e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855	\N	\N	\N	\N	\N	\N
\.


--
-- Name: course_user_enroll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: parvinhajili
--

SELECT pg_catalog.setval('public.course_user_enroll_id_seq', 2, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: parvinhajili
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: parvinhajili
--

SELECT pg_catalog.setval('public.users_user_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

