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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 3, 658);
INSERT INTO public.games VALUES (4, 3, 674);
INSERT INTO public.games VALUES (5, 4, 933);
INSERT INTO public.games VALUES (6, 4, 150);
INSERT INTO public.games VALUES (7, 3, 905);
INSERT INTO public.games VALUES (8, 3, 1);
INSERT INTO public.games VALUES (9, 3, 556);
INSERT INTO public.games VALUES (10, 5, 369);
INSERT INTO public.games VALUES (11, 5, 667);
INSERT INTO public.games VALUES (12, 6, 940);
INSERT INTO public.games VALUES (13, 6, 865);
INSERT INTO public.games VALUES (14, 5, 309);
INSERT INTO public.games VALUES (15, 5, 1);
INSERT INTO public.games VALUES (16, 5, 712);
INSERT INTO public.games VALUES (17, 7, 207);
INSERT INTO public.games VALUES (18, 7, 87);
INSERT INTO public.games VALUES (19, 8, 213);
INSERT INTO public.games VALUES (20, 8, 631);
INSERT INTO public.games VALUES (21, 7, 965);
INSERT INTO public.games VALUES (22, 7, 1);
INSERT INTO public.games VALUES (23, 7, 992);
INSERT INTO public.games VALUES (24, 9, 984);
INSERT INTO public.games VALUES (25, 9, 102);
INSERT INTO public.games VALUES (26, 10, 642);
INSERT INTO public.games VALUES (27, 10, 880);
INSERT INTO public.games VALUES (28, 9, 478);
INSERT INTO public.games VALUES (29, 9, 1);
INSERT INTO public.games VALUES (30, 9, 579);
INSERT INTO public.games VALUES (31, 11, 46);
INSERT INTO public.games VALUES (32, 11, 606);
INSERT INTO public.games VALUES (33, 12, 486);
INSERT INTO public.games VALUES (34, 12, 95);
INSERT INTO public.games VALUES (35, 11, 45);
INSERT INTO public.games VALUES (36, 11, 892);
INSERT INTO public.games VALUES (37, 11, 4);
INSERT INTO public.games VALUES (38, 13, 998);
INSERT INTO public.games VALUES (39, 13, 714);
INSERT INTO public.games VALUES (40, 14, 857);
INSERT INTO public.games VALUES (41, 14, 604);
INSERT INTO public.games VALUES (42, 13, 59);
INSERT INTO public.games VALUES (43, 13, 209);
INSERT INTO public.games VALUES (44, 13, 975);
INSERT INTO public.games VALUES (45, 15, 133);
INSERT INTO public.games VALUES (46, 15, 775);
INSERT INTO public.games VALUES (47, 16, 245);
INSERT INTO public.games VALUES (48, 16, 847);
INSERT INTO public.games VALUES (49, 15, 255);
INSERT INTO public.games VALUES (50, 15, 681);
INSERT INTO public.games VALUES (51, 15, 959);
INSERT INTO public.games VALUES (52, 17, 990);
INSERT INTO public.games VALUES (53, 17, 922);
INSERT INTO public.games VALUES (54, 18, 910);
INSERT INTO public.games VALUES (55, 18, 748);
INSERT INTO public.games VALUES (56, 17, 843);
INSERT INTO public.games VALUES (57, 17, 821);
INSERT INTO public.games VALUES (58, 17, 140);
INSERT INTO public.games VALUES (59, 19, 683);
INSERT INTO public.games VALUES (60, 19, 892);
INSERT INTO public.games VALUES (61, 20, 969);
INSERT INTO public.games VALUES (62, 20, 961);
INSERT INTO public.games VALUES (63, 19, 37);
INSERT INTO public.games VALUES (64, 19, 1);
INSERT INTO public.games VALUES (65, 19, 403);
INSERT INTO public.games VALUES (66, 21, 168);
INSERT INTO public.games VALUES (67, 21, 344);
INSERT INTO public.games VALUES (68, 22, 684);
INSERT INTO public.games VALUES (69, 22, 692);
INSERT INTO public.games VALUES (70, 21, 932);
INSERT INTO public.games VALUES (71, 21, 1);
INSERT INTO public.games VALUES (72, 21, 786);
INSERT INTO public.games VALUES (73, 23, 19);
INSERT INTO public.games VALUES (74, 23, 19);
INSERT INTO public.games VALUES (75, 24, 523);
INSERT INTO public.games VALUES (76, 24, 963);
INSERT INTO public.games VALUES (77, 23, 449);
INSERT INTO public.games VALUES (78, 23, 1);
INSERT INTO public.games VALUES (79, 23, 488);
INSERT INTO public.games VALUES (80, 25, 96);
INSERT INTO public.games VALUES (81, 25, 198);
INSERT INTO public.games VALUES (82, 26, 515);
INSERT INTO public.games VALUES (83, 26, 14);
INSERT INTO public.games VALUES (84, 25, 944);
INSERT INTO public.games VALUES (85, 25, 1);
INSERT INTO public.games VALUES (86, 25, 164);
INSERT INTO public.games VALUES (87, 27, 813);
INSERT INTO public.games VALUES (88, 27, 341);
INSERT INTO public.games VALUES (89, 28, 510);
INSERT INTO public.games VALUES (90, 28, 927);
INSERT INTO public.games VALUES (91, 27, 955);
INSERT INTO public.games VALUES (92, 27, 672);
INSERT INTO public.games VALUES (93, 27, 221);
INSERT INTO public.games VALUES (94, 29, 702);
INSERT INTO public.games VALUES (95, 29, 519);
INSERT INTO public.games VALUES (96, 30, 318);
INSERT INTO public.games VALUES (97, 30, 360);
INSERT INTO public.games VALUES (98, 29, 177);
INSERT INTO public.games VALUES (99, 29, 712);
INSERT INTO public.games VALUES (100, 29, 541);
INSERT INTO public.games VALUES (101, 31, 125);
INSERT INTO public.games VALUES (102, 31, 716);
INSERT INTO public.games VALUES (103, 32, 552);
INSERT INTO public.games VALUES (104, 32, 699);
INSERT INTO public.games VALUES (105, 31, 950);
INSERT INTO public.games VALUES (106, 31, 1);
INSERT INTO public.games VALUES (107, 31, 984);
INSERT INTO public.games VALUES (108, 33, 1);
INSERT INTO public.games VALUES (109, 34, 469);
INSERT INTO public.games VALUES (110, 34, 414);
INSERT INTO public.games VALUES (111, 35, 639);
INSERT INTO public.games VALUES (112, 35, 73);
INSERT INTO public.games VALUES (113, 34, 332);
INSERT INTO public.games VALUES (114, 34, 438);
INSERT INTO public.games VALUES (115, 34, 824);
INSERT INTO public.games VALUES (116, 36, 498);
INSERT INTO public.games VALUES (117, 36, 967);
INSERT INTO public.games VALUES (118, 37, 220);
INSERT INTO public.games VALUES (119, 37, 730);
INSERT INTO public.games VALUES (120, 36, 23);
INSERT INTO public.games VALUES (121, 36, 933);
INSERT INTO public.games VALUES (122, 36, 980);
INSERT INTO public.games VALUES (123, 38, 373);
INSERT INTO public.games VALUES (124, 38, 130);
INSERT INTO public.games VALUES (125, 39, 328);
INSERT INTO public.games VALUES (126, 39, 44);
INSERT INTO public.games VALUES (127, 38, 431);
INSERT INTO public.games VALUES (128, 38, 581);
INSERT INTO public.games VALUES (129, 38, 374);
INSERT INTO public.games VALUES (130, 40, 528);
INSERT INTO public.games VALUES (131, 40, 181);
INSERT INTO public.games VALUES (132, 41, 55);
INSERT INTO public.games VALUES (133, 41, 120);
INSERT INTO public.games VALUES (134, 40, 47);
INSERT INTO public.games VALUES (135, 40, 588);
INSERT INTO public.games VALUES (136, 40, 721);
INSERT INTO public.games VALUES (137, 42, 399);
INSERT INTO public.games VALUES (138, 42, 986);
INSERT INTO public.games VALUES (139, 43, 875);
INSERT INTO public.games VALUES (140, 43, 867);
INSERT INTO public.games VALUES (141, 42, 882);
INSERT INTO public.games VALUES (142, 42, 53);
INSERT INTO public.games VALUES (143, 42, 285);
INSERT INTO public.games VALUES (144, 44, 549);
INSERT INTO public.games VALUES (145, 44, 117);
INSERT INTO public.games VALUES (146, 45, 245);
INSERT INTO public.games VALUES (147, 45, 850);
INSERT INTO public.games VALUES (148, 44, 106);
INSERT INTO public.games VALUES (149, 44, 558);
INSERT INTO public.games VALUES (150, 44, 58);
INSERT INTO public.games VALUES (151, 46, 863);
INSERT INTO public.games VALUES (152, 46, 221);
INSERT INTO public.games VALUES (153, 47, 580);
INSERT INTO public.games VALUES (154, 47, 717);
INSERT INTO public.games VALUES (155, 46, 706);
INSERT INTO public.games VALUES (156, 46, 474);
INSERT INTO public.games VALUES (157, 46, 991);
INSERT INTO public.games VALUES (158, 48, 756);
INSERT INTO public.games VALUES (159, 48, 936);
INSERT INTO public.games VALUES (160, 49, 551);
INSERT INTO public.games VALUES (161, 49, 269);
INSERT INTO public.games VALUES (162, 48, 948);
INSERT INTO public.games VALUES (163, 48, 784);
INSERT INTO public.games VALUES (164, 48, 286);
INSERT INTO public.games VALUES (165, 50, 614);
INSERT INTO public.games VALUES (166, 50, 56);
INSERT INTO public.games VALUES (167, 51, 593);
INSERT INTO public.games VALUES (168, 51, 107);
INSERT INTO public.games VALUES (169, 50, 418);
INSERT INTO public.games VALUES (170, 50, 120);
INSERT INTO public.games VALUES (171, 50, 366);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'aldi');
INSERT INTO public.users VALUES (2, 'bull');
INSERT INTO public.users VALUES (3, 'user_1728723422661');
INSERT INTO public.users VALUES (4, 'user_1728723422660');
INSERT INTO public.users VALUES (5, 'user_1728723607126');
INSERT INTO public.users VALUES (6, 'user_1728723607125');
INSERT INTO public.users VALUES (7, 'user_1728723723975');
INSERT INTO public.users VALUES (8, 'user_1728723723974');
INSERT INTO public.users VALUES (9, 'user_1728723843454');
INSERT INTO public.users VALUES (10, 'user_1728723843453');
INSERT INTO public.users VALUES (11, 'user_1728724052457');
INSERT INTO public.users VALUES (12, 'user_1728724052456');
INSERT INTO public.users VALUES (13, 'user_1728724130296');
INSERT INTO public.users VALUES (14, 'user_1728724130295');
INSERT INTO public.users VALUES (15, 'user_1728724269645');
INSERT INTO public.users VALUES (16, 'user_1728724269644');
INSERT INTO public.users VALUES (17, 'user_1728724287368');
INSERT INTO public.users VALUES (18, 'user_1728724287367');
INSERT INTO public.users VALUES (19, 'user_1728724310616');
INSERT INTO public.users VALUES (20, 'user_1728724310615');
INSERT INTO public.users VALUES (21, 'user_1728724355909');
INSERT INTO public.users VALUES (22, 'user_1728724355908');
INSERT INTO public.users VALUES (23, 'user_1728724390025');
INSERT INTO public.users VALUES (24, 'user_1728724390024');
INSERT INTO public.users VALUES (25, 'user_1728724409319');
INSERT INTO public.users VALUES (26, 'user_1728724409318');
INSERT INTO public.users VALUES (27, 'user_1728724538811');
INSERT INTO public.users VALUES (28, 'user_1728724538810');
INSERT INTO public.users VALUES (29, 'user_1728724594200');
INSERT INTO public.users VALUES (30, 'user_1728724594199');
INSERT INTO public.users VALUES (31, 'user_1728724649868');
INSERT INTO public.users VALUES (32, 'user_1728724649867');
INSERT INTO public.users VALUES (33, 'ALDI');
INSERT INTO public.users VALUES (34, 'user_1728725722774');
INSERT INTO public.users VALUES (35, 'user_1728725722773');
INSERT INTO public.users VALUES (36, 'user_1728725864580');
INSERT INTO public.users VALUES (37, 'user_1728725864579');
INSERT INTO public.users VALUES (38, 'user_1728725886703');
INSERT INTO public.users VALUES (39, 'user_1728725886702');
INSERT INTO public.users VALUES (40, 'user_1728726012432');
INSERT INTO public.users VALUES (41, 'user_1728726012431');
INSERT INTO public.users VALUES (42, 'user_1728726078576');
INSERT INTO public.users VALUES (43, 'user_1728726078575');
INSERT INTO public.users VALUES (44, 'user_1728726365186');
INSERT INTO public.users VALUES (45, 'user_1728726365185');
INSERT INTO public.users VALUES (46, 'user_1728726435844');
INSERT INTO public.users VALUES (47, 'user_1728726435843');
INSERT INTO public.users VALUES (48, 'user_1728726457857');
INSERT INTO public.users VALUES (49, 'user_1728726457856');
INSERT INTO public.users VALUES (50, 'user_1728726563011');
INSERT INTO public.users VALUES (51, 'user_1728726563010');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 171, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_users_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

