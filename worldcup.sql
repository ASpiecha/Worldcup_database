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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: t; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.t (
    year integer,
    round character varying(20),
    winner character varying(20),
    opponent character varying(20),
    winner_goals integer,
    opponent_goals integer
);


ALTER TABLE public.t OWNER TO freecodecamp;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: t; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.t VALUES (2018, 'Final', 'France', 'Croatia', 4, 2);
INSERT INTO public.t VALUES (2018, 'Third Place', 'Belgium', 'England', 2, 0);
INSERT INTO public.t VALUES (2018, 'Semi-Final', 'Croatia', 'England', 2, 1);
INSERT INTO public.t VALUES (2018, 'Semi-Final', 'France', 'Belgium', 1, 0);
INSERT INTO public.t VALUES (2018, 'Quarter-Final', 'Croatia', 'Russia', 3, 2);
INSERT INTO public.t VALUES (2018, 'Quarter-Final', 'England', 'Sweden', 2, 0);
INSERT INTO public.t VALUES (2018, 'Quarter-Final', 'Belgium', 'Brazil', 2, 1);
INSERT INTO public.t VALUES (2018, 'Quarter-Final', 'France', 'Uruguay', 2, 0);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'England', 'Colombia', 2, 1);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Sweden', 'Switzerland', 1, 0);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Belgium', 'Japan', 3, 2);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Brazil', 'Mexico', 2, 0);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Croatia', 'Denmark', 2, 1);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Russia', 'Spain', 2, 1);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'Uruguay', 'Portugal', 2, 1);
INSERT INTO public.t VALUES (2018, 'Eighth-Final', 'France', 'Argentina', 4, 3);
INSERT INTO public.t VALUES (2014, 'Final', 'Germany', 'Argentina', 1, 0);
INSERT INTO public.t VALUES (2014, 'Third Place', 'Netherlands', 'Brazil', 3, 0);
INSERT INTO public.t VALUES (2014, 'Semi-Final', 'Argentina', 'Netherlands', 1, 0);
INSERT INTO public.t VALUES (2014, 'Semi-Final', 'Germany', 'Brazil', 7, 1);
INSERT INTO public.t VALUES (2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 1, 0);
INSERT INTO public.t VALUES (2014, 'Quarter-Final', 'Argentina', 'Belgium', 1, 0);
INSERT INTO public.t VALUES (2014, 'Quarter-Final', 'Brazil', 'Colombia', 2, 1);
INSERT INTO public.t VALUES (2014, 'Quarter-Final', 'Germany', 'France', 1, 0);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Brazil', 'Chile', 2, 1);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Colombia', 'Uruguay', 2, 0);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'France', 'Nigeria', 2, 0);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Germany', 'Algeria', 2, 1);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Netherlands', 'Mexico', 2, 1);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Costa Rica', 'Greece', 2, 1);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Argentina', 'Switzerland', 1, 0);
INSERT INTO public.t VALUES (2014, 'Eighth-Final', 'Belgium', 'United States', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1, false);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

