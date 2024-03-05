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
    description text,
    discovered_in integer,
    discovered_by character varying(30)
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
    circumference_in_km integer,
    description text,
    planet_id integer
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
    circumference_in_km integer,
    description text,
    has_life boolean NOT NULL,
    has_water boolean,
    disvored_in_percent numeric(5,2),
    star_id integer
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    population_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origine character varying(30),
    planet_id integer
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    circumference_in_km integer,
    description text,
    galaxy_id integer
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
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'gets its name from the area of the sky in which it appears, the constellation of Andromeda.', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'similar to an insect s antennae', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'rotate backwards', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Bear paw', 'bears claw', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black eye', 'called also Evil eye', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bode', 'discovered in 1774', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'very biotiful', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1738, 'Our natural satellite', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 11267, 'Larger satellite from Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 'Smaller satellite from Mars', 4);
INSERT INTO public.moon VALUES (4, 'Io', 1821, 'Second-smallest satellite from Jupiter', 8);
INSERT INTO public.moon VALUES (5, 'Europa', 1560, 'Smallest satellite from Jupiter', 8);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 'Biggest satellite from Jupiter', 8);
INSERT INTO public.moon VALUES (7, 'Callisto', 2634, 'second-largest satellite from Jupiter', 8);
INSERT INTO public.moon VALUES (8, 'Mimas', 198, 'Smallest astronomical body', 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 252, 'sixth-largest moon of saturn', 5);
INSERT INTO public.moon VALUES (10, 'Tethys', 533, 'fifth-largest moon of saturn', 5);
INSERT INTO public.moon VALUES (11, 'Dione', 561, 'fourth-largest moon of saturn', 5);
INSERT INTO public.moon VALUES (12, 'Rhea', 768, 'second-largest moon of saturn', 5);
INSERT INTO public.moon VALUES (13, 'Titan', 2574, 'Largest moon of saturn', 5);
INSERT INTO public.moon VALUES (14, 'Ariel', 578, 'fourth-largest moon of Uranus', 6);
INSERT INTO public.moon VALUES (15, 'Umbriel', 584, 'discovered with Ariel', 6);
INSERT INTO public.moon VALUES (16, 'Titania', 788, 'largest moon of Uranus', 6);
INSERT INTO public.moon VALUES (17, 'Oberon', 761, 'Outermost major  moon of Uranus', 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 235, 'smallest innermost moon of Uranus', 6);
INSERT INTO public.moon VALUES (19, 'Cordelia', 20, 'innermost moon of Uranus', 6);
INSERT INTO public.moon VALUES (20, 'Ophelia', 21, 'Images taken by Voyager 2', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 15329, 'Closest planet to the sun', false, true, 100.00, 3);
INSERT INTO public.planet VALUES (2, 'Venus', 38024, 'Rocky planet, extremly high temp', false, true, 53.00, 3);
INSERT INTO public.planet VALUES (3, 'Earth', 40075, 'The blue planet', true, true, 75.00, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 21344, 'The red planet', false, true, 40.00, 3);
INSERT INTO public.planet VALUES (5, 'Saturn', 365882, 'Giant gas', false, true, 20.00, 3);
INSERT INTO public.planet VALUES (6, 'Uranus', 160590, 'Icy gas giant', false, true, 15.00, 3);
INSERT INTO public.planet VALUES (7, 'Neptune', 156490, 'Furthest planet from our solar system', false, true, 10.00, 3);
INSERT INTO public.planet VALUES (8, 'Jupiter', 439264, 'Largest planet from our solar system', false, true, 14.25, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 4494, 'Excluded from our solar system', false, true, 5.25, 3);
INSERT INTO public.planet VALUES (10, 'Eris', 11449, 'Dwarf planet in Kuiper Belt', false, false, 95.20, 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 2322, 'Largest dwarf planet in Kuiper Belt', false, false, 0.00, 3);
INSERT INTO public.planet VALUES (12, 'MakeMake', 1434, 'Name of the Rapa Nui s god', false, false, 30.00, 3);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES (1, 'Terrian', 'Earth', 3);
INSERT INTO public.population VALUES (2, 'Martian', 'Mars', 4);
INSERT INTO public.population VALUES (3, 'Saturnian', 'Saturn', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY Scuti', 1708, 'Biggest star know nowadays', 7);
INSERT INTO public.star VALUES (2, 'WOH G64', 1540, 'Loosing mass', 7);
INSERT INTO public.star VALUES (3, 'Sun', 1, 'Our sun', 7);
INSERT INTO public.star VALUES (4, 'Alpheratz', NULL, 'Most brillant star from the constellation of Andromeda', 1);
INSERT INTO public.star VALUES (5, '14 And', NULL, 'Orange-hued giant star', 1);
INSERT INTO public.star VALUES (6, 'Beta Corvi', 16, 'Second most shinny star in the constellation', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_name_unique UNIQUE (name);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: population population_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

