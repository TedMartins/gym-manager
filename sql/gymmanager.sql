--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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
-- Name: instructors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instructors (
    id integer NOT NULL,
    avatar_url text,
    birthday timestamp without time zone,
    name text,
    gender text,
    created_at timestamp without time zone,
    services text
);


--
-- Name: instructors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.instructors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: instructors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.instructors_id_seq OWNED BY public.instructors.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.members (
    id integer NOT NULL,
    name text,
    avatar_url text,
    email text,
    gender text,
    birthday timestamp without time zone,
    blood text,
    weight integer,
    height integer,
    instructor_id integer
);


--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: instructors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructors ALTER COLUMN id SET DEFAULT nextval('public.instructors_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.instructors (id, avatar_url, birthday, name, gender, created_at, services) FROM stdin;
2	https://images.unsplash.com/photo-1533681717801-1bbd2ec8d269?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80	1988-02-05 00:00:00	Jane Doe	F	2021-03-24 00:00:00	crossfit, bodybuilding
3	https://images.unsplash.com/photo-1580051052324-d917be927897?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80	1980-06-01 00:00:00	John Doe	M	2021-03-24 00:00:00	Crossfit, Bodybuilding
1	https://github.com/tedmartins.png	1985-04-29 00:00:00	Ted Martins	M	1970-01-01 00:00:00	Express, PostgreSQL
5	https://images.unsplash.com/photo-1607172611142-b800d035dc4b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80	1981-02-01 00:00:00	Bryan Doe	M	2021-03-26 00:00:00	crossfit, bodybuilding 
6	https://images.unsplash.com/photo-1593164842264-854604db2260?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80	1992-09-01 00:00:00	Anna Doe	F	2021-03-26 00:00:00	fitness, yoga
7	https://images.unsplash.com/photo-1586035758264-c5c685f55e9c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80	1986-12-11 00:00:00	Mayk Doe	M	2021-03-26 00:00:00	yoga
8	https://images.unsplash.com/photo-1547153760-18fc86324498?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80	1994-03-06 00:00:00	Mary Doe	F	2021-03-26 00:00:00	dance, yoga
9	https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80	1984-10-06 00:00:00	Anthony Doe	M	2021-03-26 00:00:00	bodybuilding
10	https://images.unsplash.com/photo-1597376833295-40a54d5e69fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80	2000-11-19 00:00:00	Alice Doe	F	2021-03-26 00:00:00	yoga, dance, fitness
11	https://source.unsplash.com/collection/1431005/900x900	1996-05-01 00:00:00	Bruna Doe	F	2021-03-26 00:00:00	fitness, yoga
12	https://source.unsplash.com/collection/1431005/900x900	1992-01-01 00:00:00	Amanda Doe	F	2021-03-26 00:00:00	dance, yoga
13	https://source.unsplash.com/collection/1431005/900x900	1989-12-05 00:00:00	Joana Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding 
15	https://source.unsplash.com/collection/1431005/900x900	1979-07-07 00:00:00	Morgana Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding, yoga 
16	https://source.unsplash.com/collection/1431005/900x900	1996-06-06 00:00:00	Skyler Doe	F	2021-03-26 00:00:00	fitness, yoga
17	https://source.unsplash.com/collection/1431005/900x900	1999-02-03 00:00:00	Katarina Doe	F	2021-03-26 00:00:00	fitness, yoga
20	https://source.unsplash.com/collection/1431005/900x900	1997-07-07 00:00:00	Monica Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding 
21	https://source.unsplash.com/collection/1431005/900x900	1886-06-06 00:00:00	Eva Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding, yoga 
22	https://source.unsplash.com/collection/1431005/900x900	1999-09-09 00:00:00	Jennifer Doe	F	2021-03-26 00:00:00	fitness, yoga
23	https://source.unsplash.com/collection/1431005/900x900	1992-02-02 00:00:00	Carla Doe	F	2021-03-26 00:00:00	dance, zumba, yoga
24	https://source.unsplash.com/collection/1431005/900x900	2000-10-10 00:00:00	Michelle Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding, yoga 
25	https://source.unsplash.com/collection/1431005/900x900	1981-01-01 00:00:00	Karol Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding 
26	https://source.unsplash.com/collection/1431005/900x900	1995-04-04 00:00:00	Pamela Doe	F	2021-03-26 00:00:00	fitness, yoga
27	https://source.unsplash.com/collection/1431005/900x900	1998-09-09 00:00:00	Danielle Doe	F	2021-03-26 00:00:00	fitness, yoga
28	https://source.unsplash.com/collection/1431005/900x900	1994-08-01 00:00:00	Katherine Doe	F	2021-03-26 00:00:00	fitness, yoga
30	https://source.unsplash.com/collection/1431005/900x900	1987-06-05 00:00:00	Joyce Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding, yoga 
19	https://images.unsplash.com/photo-1464962634408-5970d4f0614d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5OTc2&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	1988-08-08 00:00:00	Raze Doe	F	2021-03-26 00:00:00	fitness, yoga
29	https://images.unsplash.com/photo-1514934240037-027a3f7be6f9?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzQwODYz&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	1996-05-05 00:00:00	Zyra Doe	F	2021-03-26 00:00:00	fitness, yoga
18	https://images.unsplash.com/photo-1503342484812-ee33283508a5?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzQxMDAw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	2002-01-06 00:00:00	Raphaella Doe	F	2021-03-26 00:00:00	dance
14	https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzQxMDU0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	1994-05-06 00:00:00	Jessica Doe	F	2021-03-26 00:00:00	crossfit, bodybuilding 
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.members (id, name, avatar_url, email, gender, birthday, blood, weight, height, instructor_id) FROM stdin;
1	Mary Doe	https://images.unsplash.com/photo-1506633541287-7c7544a7a706?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80	marydoe@email.net	F	1987-07-28 00:00:00	AB+	56	167	1
2	James Doe	https://images.unsplash.com/photo-1605098856030-0de18ab32b43?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=542&q=80	jamesdoe@email.org	M	1991-05-01 00:00:00	A-	65	172	1
3	Sarah Doe	https://images.unsplash.com/photo-1519419691348-3b3433c4c20e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=562&q=80	sarahdoe@email.net	F	1999-11-15 00:00:00	B-	61	168	2
4	Britney Doe	https://source.unsplash.com/collection/1431005/900x900	myemail@email.com.no	F	1999-01-01 00:00:00	A+	60	155	1
5	Cris Doe	https://images.unsplash.com/photo-1503342331296-c8ca3b8dd0a0?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5MzQy&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	2002-01-01 00:00:00	AB+	55	162	1
6	Ana A. Doe	https://images.unsplash.com/photo-1511854289476-81c95d2a62c6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5NDIz&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	1999-05-01 00:00:00	B-	60	165	7
7	Jannete Doe	https://images.unsplash.com/photo-1504276048855-f3d60e69632f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5NDc5&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	1991-04-05 00:00:00	B+	72	165	1
8	Margareth Doe	https://images.unsplash.com/photo-1513198914840-a06f8cdb3db0?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5NTM3&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	1976-06-06 00:00:00	O+	80	168	7
9	Laura Doe	https://images.unsplash.com/photo-1485043621645-c983f19e23c6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5NTk4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	1989-03-04 00:00:00	AB-	172	64	2
10	Maryanna Doe	https://images.unsplash.com/photo-1514315384763-ba401779410f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE2NzM5Njg0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=900	myemail@email.com.no	F	1978-06-05 00:00:00	A+	52	162	2
11	Ronald Doe	https://images.unsplash.com/photo-1557862921-37829c790f19?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80	myemail@email.com.no	M	1969-09-05 00:00:00	AB-	86	176	1
\.


--
-- Name: instructors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.instructors_id_seq', 30, true);


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.members_id_seq', 11, true);


--
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

