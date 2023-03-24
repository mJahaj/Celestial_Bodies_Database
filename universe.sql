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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(64) NOT NULL,
    black_hole_type character varying(64),
    galaxy_id integer
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dist_from_earth_million_light_year numeric,
    galaxy_types character varying(100),
    description text
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
    is_spherical boolean,
    diameter_in_miles integer,
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
    has_life boolean,
    moon_count integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_count integer,
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Sagittarius A*', 'Supermassive Black Hole', 1);
INSERT INTO public.black_holes VALUES (2, 'V1616 Monocerotis', 'Stellar-Mass Black Hole', 1);
INSERT INTO public.black_holes VALUES (3, 'Cygnus X-1', 'Stellar-Mass Black Hole', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 0, 'Spiral', 'The Milky Way is a barred spiral galaxy containing billions of stars, including our own sun, and is home to the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 2.5, 'Spiral', 'The Andromeda Galaxy is the closest spiral galaxy to the Milky Way and is one of the brightest onjects in the night sky.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 3, 'Spiral', 'Its stunning spiral arms are lined with bright pink and blue regions, signifying areas of intense star formation.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 23, 'Spiral', 'It is located in the constellation Canes Venatici, and is one of the most famous galaxies in the sky.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 29.3, 'Lenticular', 'The Sombrero Galaxy is notable for its distinctive hat-like appearance.');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 21, 'Spiral', 'The Pinwheel Galaxy is notable for its spiral arms and is considered one of the largest and brightest spiral galaxies visible from earth.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 2159, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', false, 14, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', false, 8, 2);
INSERT INTO public.moon VALUES (5, 'Io', false, 2263, 3);
INSERT INTO public.moon VALUES (6, 'Europa', true, 1940, 3);
INSERT INTO public.moon VALUES (7, 'Ganymede', true, 3273, 3);
INSERT INTO public.moon VALUES (8, 'Callisto', true, 2995, 3);
INSERT INTO public.moon VALUES (9, 'Amalthea', false, 123, 3);
INSERT INTO public.moon VALUES (10, 'Titan', true, 3200, 4);
INSERT INTO public.moon VALUES (11, 'Mimas', true, 246, 4);
INSERT INTO public.moon VALUES (13, 'Iapetus', false, 914, 4);
INSERT INTO public.moon VALUES (14, 'Enceladus', true, 313, 4);
INSERT INTO public.moon VALUES (15, 'Hyperion', false, 168, 4);
INSERT INTO public.moon VALUES (17, 'Miranda', false, 292, 42);
INSERT INTO public.moon VALUES (18, 'Ariel', true, 721, 42);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 727, 42);
INSERT INTO public.moon VALUES (20, 'Triton', true, 1680, 41);
INSERT INTO public.moon VALUES (21, 'Nereid', false, 209, 41);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mars', false, 2, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, 79, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', false, 82, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', false, 0, 1);
INSERT INTO public.planet VALUES (41, 'Neptune', false, 14, 1);
INSERT INTO public.planet VALUES (42, 'Uranus', false, 27, 1);
INSERT INTO public.planet VALUES (43, 'Venus', false, 0, 1);
INSERT INTO public.planet VALUES (45, 'Kepler-62b', false, 0, 3);
INSERT INTO public.planet VALUES (46, 'Kepler-22b', false, 0, 5);
INSERT INTO public.planet VALUES (47, 'Kepler-62c', false, 0, 3);
INSERT INTO public.planet VALUES (48, 'Kepler-62d', false, 0, 3);
INSERT INTO public.planet VALUES (49, 'Kepler-62e', false, 0, 3);
INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 8, 1);
INSERT INTO public.star VALUES (2, 'Betelgeus', 8, 0, 1);
INSERT INTO public.star VALUES (3, 'Kepeler-62', 7000, 5, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 350, 0, 1);
INSERT INTO public.star VALUES (5, 'Kepler-22', 4600, 1, 1);
INSERT INTO public.star VALUES (6, 'Vega', 455, 0, 1);


--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 37, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 49, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: black_holes black_holes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

