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
-- Name: biggest_asteroid_in_the_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.biggest_asteroid_in_the_galaxy (
    biggest_asteroid_in_the_galaxy_id integer NOT NULL,
    galaxy_name character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.biggest_asteroid_in_the_galaxy OWNER TO freecodecamp;

--
-- Name: biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq OWNER TO freecodecamp;

--
-- Name: biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq OWNED BY public.biggest_asteroid_in_the_galaxy.biggest_asteroid_in_the_galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    galaxy_type character varying(50)
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
    name character varying(50) NOT NULL,
    sice_in_km integer,
    distance_to_planet_in_1000km integer,
    planet_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    has_life boolean,
    sice_in_km integer,
    star_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric(100,10),
    sice_in_km integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: biggest_asteroid_in_the_galaxy biggest_asteroid_in_the_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biggest_asteroid_in_the_galaxy ALTER COLUMN biggest_asteroid_in_the_galaxy_id SET DEFAULT nextval('public.biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq'::regclass);


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
-- Data for Name: biggest_asteroid_in_the_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (1, 'Milky Way', 'Vesta', false, 1);
INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (2, 'Andromeda Galaxy', '372 PALMA', false, 2);
INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (3, 'Canis Major', 'NN', false, 3);
INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (7, 'Cygnus A', 'NotN', false, 4);
INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (8, 'Maffei 1', 'NotK', false, 5);
INSERT INTO public.biggest_asteroid_in_the_galaxy VALUES (9, 'Triangulum galaxy', 'NoKn', false, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of Earth', 0, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Also known as Messier 31', 2537000, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Canis Major', 'A disputed dwarf irregular galaxy in the local group', 25000, 'dwarf galaxy');
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', 'One of the strongest radio sources in the sky', 600000000, 'radio galaxy');
INSERT INTO public.galaxy VALUES (5, 'Maffei 1', 'Made mainly of old metal rich stars', 9295000, 'giant galaxy');
INSERT INTO public.galaxy VALUES (6, 'Triangulum galaxy', 'Is believed to be a sattelite of andromeda galaxy', 2723000, 'spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3476, 384, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 26, 9000, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 16, 20000, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3643, 421, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 671, 5);
INSERT INTO public.moon VALUES (6, 'Ganymed', 5262, 1070, 5);
INSERT INTO public.moon VALUES (7, 'Kallisto', 4821, 1882, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 168, 181, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 160, 11641, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 78, 11741, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', 397, 185, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 499, 238, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1060, 294, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 1118, 377, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 1528, 527, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 1158, 190, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 1169, 266, 7);
INSERT INTO public.moon VALUES (18, 'Titania', 1578, 436, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 1522, 583, 7);
INSERT INTO public.moon VALUES (20, 'Miranda', 471, 129, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 4878, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 12104, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 12760, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 6787, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 129822, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 120500, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 51120, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 49530, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', false, 940, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', false, 2376, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 1632, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', false, 1430, 1);
INSERT INTO public.planet VALUES (13, 'Eris', false, 2326, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 4500.0000000000, 696340, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 60.0000000000, 2345885, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 240.0000000000, 2400000, 3);
INSERT INTO public.star VALUES (4, 'Deneb', 10.0000000000, 141230000, 4);
INSERT INTO public.star VALUES (5, 'NN', 0.0000000000, 0, 5);
INSERT INTO public.star VALUES (6, 'Beta trianguli', 6100.0000000000, 1256313, 6);


--
-- Name: biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.biggest_asteroid_in_the_galax_biggest_asteroid_in_the_galax_seq', 9, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: biggest_asteroid_in_the_galaxy biggest_asteroid_in_the_galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biggest_asteroid_in_the_galaxy
    ADD CONSTRAINT biggest_asteroid_in_the_galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: biggest_asteroid_in_the_galaxy biggest_asteroid_in_the_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biggest_asteroid_in_the_galaxy
    ADD CONSTRAINT biggest_asteroid_in_the_galaxy_name_key UNIQUE (name);


--
-- Name: biggest_asteroid_in_the_galaxy biggest_asteroid_in_the_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biggest_asteroid_in_the_galaxy
    ADD CONSTRAINT biggest_asteroid_in_the_galaxy_pkey PRIMARY KEY (biggest_asteroid_in_the_galaxy_id);


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
-- Name: moon moon_columnname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_columnname_key UNIQUE (name);


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
-- Name: biggest_asteroid_in_the_galaxy fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biggest_asteroid_in_the_galaxy
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
