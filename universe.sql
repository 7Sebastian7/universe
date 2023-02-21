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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    discription text NOT NULL,
    planet_id integer,
    star_id integer,
    moon_id integer,
    size_in_km numeric(102,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    discription text,
    planet_id integer,
    galaxy_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    discription text,
    is_spherical boolean,
    star_id integer,
    moon_id integer,
    galaxy_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discription text,
    galaxy_id integer,
    is_sphreical boolean,
    planet_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_planet (
    star_planet_id integer NOT NULL,
    planet_id integer,
    name character varying NOT NULL
);


ALTER TABLE public.star_planet OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 'xyz', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milkyway', 11, 'ghjnnds', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milkyroad', 12, 'nasc,nbasbdv', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milklight', 13, 'efkjbksuf', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milkgum', 14, 'efkdcasdf', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milklik', 15, 'easdfasdfv', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Mond2', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Mond3', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Mond4', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (5, 'Mond5', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (6, 'Mond6', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (7, 'Mond7', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (8, 'Mond8', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'Mond9', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Mond10', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (11, 'Mond11', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (12, 'Mond12', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (13, 'Mond13', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Mond14', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (15, 'Mond15', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Mond16', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (17, 'Mond17', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (18, 'Mond18', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Mond19', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Mond20', NULL, NULL, NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Pluto', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Uranus', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Uranos', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Mediamarkt', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Bla', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Blu', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Walhalla', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Walhallo', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Schnullipup', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Schnullipip', NULL, NULL, NULL, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Hinkel', 'xyz', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Pinkle', 'kaslbc', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Schinkel', 'kayd<vslbc', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Minkel', 'kakladnsvlc', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Tinkel', 'ahfehf', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'BLUB', 'ahfehasfhkf', 6, NULL, NULL);


--
-- Data for Name: star_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_planet VALUES (1, 3, 'daihcvaö');
INSERT INTO public.star_planet VALUES (2, 8, 'sdgf');
INSERT INTO public.star_planet VALUES (3, 10, 'wertz');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_planet star_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_name_key UNIQUE (name);


--
-- Name: star_planet star_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_pkey PRIMARY KEY (star_planet_id);


--
-- Name: star_planet star_planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: galaxy fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: galaxy fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

