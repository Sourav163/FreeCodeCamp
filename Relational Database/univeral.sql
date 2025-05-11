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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(50),
    fifth_table_int_1 integer NOT NULL,
    fifth_table_int_2 integer NOT NULL,
    fifth_table_numeric numeric(10,2),
    fifth_table_text text,
    fifth_table_boolean boolean
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    galaxy_int_1 integer NOT NULL,
    galaxy_int_2 integer NOT NULL,
    galaxy_numeric numeric(10,2),
    galaxy_text text,
    galaxy_boolean boolean
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
    name character varying(50),
    moon_int_1 integer NOT NULL,
    moon_int_2 integer NOT NULL,
    moon_numeric numeric(10,2),
    moon_text text,
    moon_boolean boolean,
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
    name character varying(50),
    planet_int_1 integer NOT NULL,
    planet_int_2 integer NOT NULL,
    planet_numeric numeric(10,2),
    planet_text text,
    planet_boolean boolean,
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
    name character varying(50),
    star_int_1 integer NOT NULL,
    star_int_2 integer NOT NULL,
    star_numeric numeric(10,2),
    star_text text,
    star_boolean boolean,
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'Row 1', 100, 200, 1234.56, 'This is the first row', true);
INSERT INTO public.fifth_table VALUES (2, 'Row 2', 300, 400, 7890.12, 'This is the second row', false);
INSERT INTO public.fifth_table VALUES (3, 'Row 3', 500, 600, 3456.78, 'This is the third row', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 200, 12345.67, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 150, 250, 23456.78, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 200, 300, 34567.89, 'Elliptical galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 120, 220, 45678.90, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 180, 280, 56789.01, 'Spiral galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 110, 210, 67890.12, 'Spiral galaxy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 10, 20, 1234.56, 'Earth-s moon', true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 15, 25, 2345.67, 'Moon of Mars', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 20, 30, 3456.78, 'Moon of Mars', true, 2);
INSERT INTO public.moon VALUES (4, 'Io', 25, 35, 4567.89, 'Moon of Jupiter', false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 30, 40, 5678.90, 'Moon of Jupiter', true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 35, 45, 6789.01, 'Moon of Jupiter', false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 40, 50, 7890.12, 'Moon of Jupiter', true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 45, 55, 8901.23, 'Moon of Saturn', false, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 50, 60, 9012.34, 'Moon of Saturn', true, 4);
INSERT INTO public.moon VALUES (10, 'Tethys', 55, 65, 10123.45, 'Moon of Saturn', false, 5);
INSERT INTO public.moon VALUES (11, 'Dione', 60, 70, 11234.56, 'Moon of Saturn', true, 5);
INSERT INTO public.moon VALUES (12, 'Enceladus', 65, 75, 12345.67, 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 70, 80, 13456.78, 'Moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (14, 'Ariel', 75, 85, 14567.89, 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 80, 90, 15678.90, 'Moon of Uranus', true, 8);
INSERT INTO public.moon VALUES (16, 'Titania', 85, 95, 16789.01, 'Moon of Uranus', false, 9);
INSERT INTO public.moon VALUES (17, 'Oberon', 90, 100, 17890.12, 'Moon of Uranus', true, 10);
INSERT INTO public.moon VALUES (18, 'Miranda', 95, 105, 18901.23, 'Moon of Uranus', false, 11);
INSERT INTO public.moon VALUES (19, 'Triton', 100, 110, 20012.34, 'Moon of Neptune', true, 12);
INSERT INTO public.moon VALUES (20, 'Nereid', 105, 115, 21123.45, 'Moon of Neptune', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 100, 200, 12345.67, 'Habitable planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 150, 250, 23456.78, 'Red planet', false, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 200, 300, 34567.89, 'Hot and acidic', true, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 250, 350, 45678.90, 'Largest planet', false, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 300, 400, 56789.01, 'Ringed planet', true, 5);
INSERT INTO public.planet VALUES (6, 'Uranus', 350, 450, 67890.12, 'Tilted planet', false, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 400, 500, 78901.23, 'Windy and cold', true, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 450, 550, 89012.34, 'Dwarf planet', false, 2);
INSERT INTO public.planet VALUES (9, 'Mercury', 500, 600, 90123.45, 'Smallest planet', true, 3);
INSERT INTO public.planet VALUES (10, 'Titan', 550, 650, 91234.56, 'Moon of Saturn', false, 4);
INSERT INTO public.planet VALUES (11, 'Europa', 600, 700, 92345.67, 'Moon of Jupiter', true, 5);
INSERT INTO public.planet VALUES (12, 'Io', 650, 750, 93456.78, 'Moon of Jupiter', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', 10, 20, 123.45, 'Type G star', true, 1);
INSERT INTO public.star VALUES (2, 'Star B', 15, 25, 234.56, 'Type K star', false, 2);
INSERT INTO public.star VALUES (3, 'Star C', 20, 30, 345.67, 'Type M star', true, 3);
INSERT INTO public.star VALUES (4, 'Star D', 25, 35, 456.78, 'Type F star', false, 4);
INSERT INTO public.star VALUES (5, 'Star E', 30, 40, 567.89, 'Type B star', true, 5);
INSERT INTO public.star VALUES (6, 'Star F', 35, 45, 678.90, 'Type A star', true, 6);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


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
-- Name: fifth_table fifth_table_fifth_table_numeric_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_fifth_table_numeric_key UNIQUE (fifth_table_numeric);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_galaxy_numeric_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_numeric_key UNIQUE (galaxy_numeric);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_numeric_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_numeric_key UNIQUE (moon_numeric);


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
-- Name: planet planet_planet_numeric_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_numeric_key UNIQUE (planet_numeric);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_numeric_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_numeric_key UNIQUE (star_numeric);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--