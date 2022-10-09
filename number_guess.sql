--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (83, 286, 26);
INSERT INTO public.games VALUES (84, 675, 26);
INSERT INTO public.games VALUES (85, 906, 27);
INSERT INTO public.games VALUES (86, 745, 27);
INSERT INTO public.games VALUES (87, 125, 26);
INSERT INTO public.games VALUES (88, 435, 26);
INSERT INTO public.games VALUES (89, 951, 26);
INSERT INTO public.games VALUES (90, 9, 28);
INSERT INTO public.games VALUES (91, 6, 28);
INSERT INTO public.games VALUES (92, 885, 37);
INSERT INTO public.games VALUES (93, 119, 37);
INSERT INTO public.games VALUES (94, 768, 38);
INSERT INTO public.games VALUES (95, 619, 38);
INSERT INTO public.games VALUES (96, 295, 37);
INSERT INTO public.games VALUES (97, 177, 37);
INSERT INTO public.games VALUES (98, 526, 37);
INSERT INTO public.games VALUES (99, 225, 45);
INSERT INTO public.games VALUES (100, 965, 45);
INSERT INTO public.games VALUES (101, 328, 46);
INSERT INTO public.games VALUES (102, 672, 46);
INSERT INTO public.games VALUES (103, 585, 45);
INSERT INTO public.games VALUES (104, 739, 45);
INSERT INTO public.games VALUES (105, 195, 45);
INSERT INTO public.games VALUES (106, 10, 28);
INSERT INTO public.games VALUES (107, 994, 47);
INSERT INTO public.games VALUES (108, 662, 47);
INSERT INTO public.games VALUES (109, 228, 48);
INSERT INTO public.games VALUES (110, 668, 48);
INSERT INTO public.games VALUES (111, 933, 47);
INSERT INTO public.games VALUES (112, 608, 47);
INSERT INTO public.games VALUES (113, 654, 47);
INSERT INTO public.games VALUES (114, 6, 28);
INSERT INTO public.games VALUES (115, 585, 49);
INSERT INTO public.games VALUES (116, 367, 49);
INSERT INTO public.games VALUES (117, 101, 50);
INSERT INTO public.games VALUES (118, 927, 50);
INSERT INTO public.games VALUES (119, 783, 49);
INSERT INTO public.games VALUES (120, 47, 49);
INSERT INTO public.games VALUES (121, 382, 49);
INSERT INTO public.games VALUES (122, 11, 28);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (26, 'user_1665318570246');
INSERT INTO public.users VALUES (27, 'user_1665318570245');
INSERT INTO public.users VALUES (28, 'name1');
INSERT INTO public.users VALUES (29, 'user_1665319382419');
INSERT INTO public.users VALUES (30, 'user_1665319382418');
INSERT INTO public.users VALUES (31, 'user_1665319606621');
INSERT INTO public.users VALUES (32, 'user_1665319606620');
INSERT INTO public.users VALUES (33, 'user_1665319758562');
INSERT INTO public.users VALUES (34, 'user_1665319758561');
INSERT INTO public.users VALUES (35, 'user_1665319943635');
INSERT INTO public.users VALUES (36, 'user_1665319943634');
INSERT INTO public.users VALUES (37, 'user_1665320055561');
INSERT INTO public.users VALUES (38, 'user_1665320055560');
INSERT INTO public.users VALUES (39, 'user_1665320897908');
INSERT INTO public.users VALUES (40, 'user_1665320897907');
INSERT INTO public.users VALUES (41, 'user_1665321678700');
INSERT INTO public.users VALUES (42, 'user_1665321678699');
INSERT INTO public.users VALUES (43, 'user_1665321905740');
INSERT INTO public.users VALUES (44, 'user_1665321905739');
INSERT INTO public.users VALUES (45, 'user_1665321979607');
INSERT INTO public.users VALUES (46, 'user_1665321979606');
INSERT INTO public.users VALUES (47, 'user_1665322079331');
INSERT INTO public.users VALUES (48, 'user_1665322079330');
INSERT INTO public.users VALUES (49, 'user_1665322157343');
INSERT INTO public.users VALUES (50, 'user_1665322157342');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 122, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

