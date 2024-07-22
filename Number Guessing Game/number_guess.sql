--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1721663485887', 2, 205);
INSERT INTO public.users VALUES (62, 'user_1721664617946', 2, 485);
INSERT INTO public.users VALUES (1, 'user_1721663485888', 5, 329);
INSERT INTO public.users VALUES (12, 'user_1721664385957', 2, 188);
INSERT INTO public.users VALUES (86, 'user_1721664874473', 2, 5);
INSERT INTO public.users VALUES (26, 'user_1721664442985', 2, 483);
INSERT INTO public.users VALUES (11, 'user_1721664385958', 5, 143);
INSERT INTO public.users VALUES (4, 'user_1721664279671', 2, 196);
INSERT INTO public.users VALUES (89, 'user_1721664886433', 5, 134);
INSERT INTO public.users VALUES (40, 'user_1721664504829', 2, 9);
INSERT INTO public.users VALUES (3, 'user_1721664279672', 5, 420);
INSERT INTO public.users VALUES (52, 'user_1721664572231', 2, 664);
INSERT INTO public.users VALUES (25, 'user_1721664442986', 5, 2);
INSERT INTO public.users VALUES (14, 'user_1721664398762', 2, 194);
INSERT INTO public.users VALUES (61, 'user_1721664617947', 5, 126);
INSERT INTO public.users VALUES (6, 'user_1721664343258', 2, 563);
INSERT INTO public.users VALUES (39, 'user_1721664504830', 5, 4);
INSERT INTO public.users VALUES (13, 'user_1721664398763', 5, 535);
INSERT INTO public.users VALUES (5, 'user_1721664343259', 5, 109);
INSERT INTO public.users VALUES (93, 'user_1721664891261', 5, 115);
INSERT INTO public.users VALUES (51, 'user_1721664572232', 5, 189);
INSERT INTO public.users VALUES (8, 'user_1721664351050', 2, 40);
INSERT INTO public.users VALUES (28, 'user_1721664450666', 2, 48);
INSERT INTO public.users VALUES (7, 'user_1721664351051', 5, 346);
INSERT INTO public.users VALUES (16, 'user_1721664405071', 2, 415);
INSERT INTO public.users VALUES (77, 'user_1721664686979', 5, 110);
INSERT INTO public.users VALUES (27, 'user_1721664450667', 5, 237);
INSERT INTO public.users VALUES (10, 'user_1721664376879', 2, 656);
INSERT INTO public.users VALUES (15, 'user_1721664405072', 5, 17);
INSERT INTO public.users VALUES (9, 'user_1721664376880', 5, 349);
INSERT INTO public.users VALUES (42, 'user_1721664510949', 2, 33);
INSERT INTO public.users VALUES (79, 'user_1721664829085', 0, NULL);
INSERT INTO public.users VALUES (41, 'user_1721664510950', 5, 345);
INSERT INTO public.users VALUES (18, 'user_1721664409590', 2, 460);
INSERT INTO public.users VALUES (17, 'user_1721664409591', 5, 49);
INSERT INTO public.users VALUES (30, 'user_1721664457237', 2, 60);
INSERT INTO public.users VALUES (72, 'user_1721664650826', 2, 69);
INSERT INTO public.users VALUES (80, 'user_1721664829084', 0, NULL);
INSERT INTO public.users VALUES (29, 'user_1721664457238', 5, 292);
INSERT INTO public.users VALUES (20, 'user_1721664415347', 2, 138);
INSERT INTO public.users VALUES (54, 'user_1721664578316', 2, 168);
INSERT INTO public.users VALUES (64, 'user_1721664622356', 2, 742);
INSERT INTO public.users VALUES (19, 'user_1721664415348', 5, 6);
INSERT INTO public.users VALUES (44, 'user_1721664515266', 2, 401);
INSERT INTO public.users VALUES (53, 'user_1721664578317', 5, 57);
INSERT INTO public.users VALUES (32, 'user_1721664463646', 2, 103);
INSERT INTO public.users VALUES (71, 'user_1721664650827', 5, 27);
INSERT INTO public.users VALUES (22, 'user_1721664423842', 2, 240);
INSERT INTO public.users VALUES (43, 'user_1721664515267', 5, 28);
INSERT INTO public.users VALUES (31, 'user_1721664463647', 5, 99);
INSERT INTO public.users VALUES (21, 'user_1721664423843', 5, 47);
INSERT INTO public.users VALUES (63, 'user_1721664622357', 5, 113);
INSERT INTO public.users VALUES (24, 'user_1721664437404', 2, 496);
INSERT INTO public.users VALUES (34, 'user_1721664482417', 2, 283);
INSERT INTO public.users VALUES (23, 'user_1721664437405', 5, 204);
INSERT INTO public.users VALUES (56, 'user_1721664595396', 2, 189);
INSERT INTO public.users VALUES (85, 'user_1721664874474', 5, 178);
INSERT INTO public.users VALUES (46, 'user_1721664522506', 2, 440);
INSERT INTO public.users VALUES (33, 'user_1721664482418', 5, 149);
INSERT INTO public.users VALUES (45, 'user_1721664522507', 5, 295);
INSERT INTO public.users VALUES (55, 'user_1721664595397', 5, 2);
INSERT INTO public.users VALUES (36, 'user_1721664491872', 2, 138);
INSERT INTO public.users VALUES (98, 'user_1721664895547', 2, 564);
INSERT INTO public.users VALUES (48, 'user_1721664541078', 2, 511);
INSERT INTO public.users VALUES (35, 'user_1721664491873', 5, 18);
INSERT INTO public.users VALUES (66, 'user_1721664635816', 2, 217);
INSERT INTO public.users VALUES (47, 'user_1721664541079', 5, 61);
INSERT INTO public.users VALUES (38, 'user_1721664498188', 2, 150);
INSERT INTO public.users VALUES (74, 'user_1721664667302', 2, 578);
INSERT INTO public.users VALUES (65, 'user_1721664635817', 5, 25);
INSERT INTO public.users VALUES (37, 'user_1721664498189', 5, 213);
INSERT INTO public.users VALUES (58, 'user_1721664600433', 2, 113);
INSERT INTO public.users VALUES (50, 'user_1721664550910', 2, 175);
INSERT INTO public.users VALUES (82, 'user_1721664843959', 2, 234);
INSERT INTO public.users VALUES (49, 'user_1721664550911', 5, 346);
INSERT INTO public.users VALUES (57, 'user_1721664600434', 5, 111);
INSERT INTO public.users VALUES (73, 'user_1721664667303', 5, 352);
INSERT INTO public.users VALUES (81, 'user_1721664843960', 5, 274);
INSERT INTO public.users VALUES (68, 'user_1721664640778', 2, 209);
INSERT INTO public.users VALUES (60, 'user_1721664606551', 2, 635);
INSERT INTO public.users VALUES (67, 'user_1721664640779', 5, 194);
INSERT INTO public.users VALUES (59, 'user_1721664606552', 5, 171);
INSERT INTO public.users VALUES (97, 'user_1721664895548', 5, 21);
INSERT INTO public.users VALUES (92, 'user_1721664889000', 2, 301);
INSERT INTO public.users VALUES (76, 'user_1721664672666', 2, 248);
INSERT INTO public.users VALUES (88, 'user_1721664882841', 2, 398);
INSERT INTO public.users VALUES (84, 'user_1721664867370', 2, 355);
INSERT INTO public.users VALUES (70, 'user_1721664646445', 2, 815);
INSERT INTO public.users VALUES (75, 'user_1721664672667', 5, 374);
INSERT INTO public.users VALUES (69, 'user_1721664646446', 5, 134);
INSERT INTO public.users VALUES (87, 'user_1721664882842', 5, 548);
INSERT INTO public.users VALUES (83, 'user_1721664867371', 5, 220);
INSERT INTO public.users VALUES (78, 'user_1721664686978', 2, 120);
INSERT INTO public.users VALUES (91, 'user_1721664889001', 5, 575);
INSERT INTO public.users VALUES (96, 'user_1721664893486', 2, 77);
INSERT INTO public.users VALUES (104, 'user_1721664916773', 2, 294);
INSERT INTO public.users VALUES (102, 'user_1721664914746', 2, 268);
INSERT INTO public.users VALUES (90, 'user_1721664886432', 2, 113);
INSERT INTO public.users VALUES (95, 'user_1721664893487', 5, 280);
INSERT INTO public.users VALUES (94, 'user_1721664891260', 2, 165);
INSERT INTO public.users VALUES (106, 'user_1721664918872', 2, 176);
INSERT INTO public.users VALUES (110, 'user_1721664923385', 2, 255);
INSERT INTO public.users VALUES (100, 'user_1721664912061', 2, 191);
INSERT INTO public.users VALUES (101, 'user_1721664914747', 5, 52);
INSERT INTO public.users VALUES (103, 'user_1721664916774', 5, 23);
INSERT INTO public.users VALUES (99, 'user_1721664912062', 5, 22);
INSERT INTO public.users VALUES (108, 'user_1721664920951', 2, 363);
INSERT INTO public.users VALUES (105, 'user_1721664918873', 5, 34);
INSERT INTO public.users VALUES (114, 'user_1721664930887', 2, 601);
INSERT INTO public.users VALUES (107, 'user_1721664920952', 5, 439);
INSERT INTO public.users VALUES (109, 'user_1721664923386', 5, 97);
INSERT INTO public.users VALUES (112, 'user_1721664926721', 2, 11);
INSERT INTO public.users VALUES (111, 'user_1721664926722', 5, 12);
INSERT INTO public.users VALUES (113, 'user_1721664930888', 5, 201);
INSERT INTO public.users VALUES (115, 'user_1721664934032', 5, 45);
INSERT INTO public.users VALUES (116, 'user_1721664934031', 2, 576);
INSERT INTO public.users VALUES (118, 'user_1721664939895', 2, 120);
INSERT INTO public.users VALUES (117, 'user_1721664939896', 5, 164);
INSERT INTO public.users VALUES (119, 'user_1721665094150', 5, 168);
INSERT INTO public.users VALUES (120, 'user_1721665094149', 2, 561);
INSERT INTO public.users VALUES (121, 'user_1721665186036', 5, 21);
INSERT INTO public.users VALUES (122, 'user_1721665186035', 2, 406);
INSERT INTO public.users VALUES (123, 'user_1721665239227', 5, 139);
INSERT INTO public.users VALUES (124, 'user_1721665239226', 2, 379);
INSERT INTO public.users VALUES (125, 'user_1721665255975', 5, 195);
INSERT INTO public.users VALUES (126, 'user_1721665255974', 2, 237);
INSERT INTO public.users VALUES (128, 'user_1721665454550', 2, 414);
INSERT INTO public.users VALUES (127, 'user_1721665454551', 5, 51);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 128, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

