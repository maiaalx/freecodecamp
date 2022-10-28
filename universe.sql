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
-- Name: food; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.food (
    name character varying(30),
    is_alive boolean NOT NULL,
    diff_kinds integer,
    food_id integer NOT NULL
);


ALTER TABLE public.food OWNER TO freecodecamp;

--
-- Name: food_food_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.food_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.food_food_id_seq OWNER TO freecodecamp;

--
-- Name: food_food_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.food_food_id_seq OWNED BY public.food.food_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    is_oxygen boolean NOT NULL,
    water boolean,
    animals character varying(30)
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
    name character varying(30) NOT NULL,
    temperature numeric(2,0),
    moon_id integer NOT NULL,
    water boolean,
    is_live boolean,
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
    name character varying(30),
    size integer,
    planet_id integer NOT NULL,
    bahavior_of_aliens text,
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
    name character varying(30) NOT NULL,
    dist integer,
    melt boolean,
    star_id integer NOT NULL,
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
-- Name: food food_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.food ALTER COLUMN food_id SET DEFAULT nextval('public.food_food_id_seq'::regclass);


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
-- Data for Name: food; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.food VALUES ('meat', true, 5, 1);
INSERT INTO public.food VALUES ('pineapple', false, 3, 2);
INSERT INTO public.food VALUES ('potatoes', false, 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('mooncake galaxy', 1, true, NULL, NULL);
INSERT INTO public.galaxy VALUES ('brownies galaxy', 2, true, NULL, NULL);
INSERT INTO public.galaxy VALUES ('barbies galaxy', 3, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('student dream', 4, true, NULL, NULL);
INSERT INTO public.galaxy VALUES ('parks paradise', 5, true, NULL, NULL);
INSERT INTO public.galaxy VALUES ('spongebobs galaxy', 6, true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('mondschein', 37, 1, false, false, 5);
INSERT INTO public.moon VALUES ('mondi', 39, 2, false, false, 5);
INSERT INTO public.moon VALUES ('moi', 39, 3, false, false, 7);
INSERT INTO public.moon VALUES ('ufo', 39, 4, false, false, 9);
INSERT INTO public.moon VALUES ('ufos', 36, 6, false, false, 5);
INSERT INTO public.moon VALUES ('abc', 36, 7, false, false, 5);
INSERT INTO public.moon VALUES ('cde', 36, 8, false, false, 5);
INSERT INTO public.moon VALUES ('fge', 36, 9, false, false, 5);
INSERT INTO public.moon VALUES ('hij', 18, 10, false, false, 5);
INSERT INTO public.moon VALUES ('klm', 18, 11, false, false, 3);
INSERT INTO public.moon VALUES ('nop', 18, 12, false, false, 3);
INSERT INTO public.moon VALUES ('qrs', 18, 13, false, false, 3);
INSERT INTO public.moon VALUES ('tuv', 18, 14, false, false, 3);
INSERT INTO public.moon VALUES ('wxyz', 18, 15, false, false, 3);
INSERT INTO public.moon VALUES ('alpha', 18, 16, false, false, 3);
INSERT INTO public.moon VALUES ('beta', 18, 17, true, false, 3);
INSERT INTO public.moon VALUES ('gamma', 18, 18, true, false, 3);
INSERT INTO public.moon VALUES ('delta', 18, 19, true, false, 3);
INSERT INTO public.moon VALUES ('omikron', 18, 20, true, false, 3);
INSERT INTO public.moon VALUES ('zeta', 18, 21, true, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('pluto', 600, 1, 'n.o.', 2);
INSERT INTO public.planet VALUES ('merkus', 60000, 3, 'n.o.', 2);
INSERT INTO public.planet VALUES ('venus', 6000000, 4, 'n.o.', 3);
INSERT INTO public.planet VALUES ('earth', 800000, 5, 'humaans', 5);
INSERT INTO public.planet VALUES ('mars', 2000000, 6, 'n.o.', 4);
INSERT INTO public.planet VALUES ('jupiter', 20000, 7, 'n.o.', 2);
INSERT INTO public.planet VALUES ('saturn', 1920000, 9, 'n.o.', 2);
INSERT INTO public.planet VALUES ('neptune', 89720000, 10, 'n.o.', 5);
INSERT INTO public.planet VALUES ('uranus', 848900, 11, 'n.o.', 6);
INSERT INTO public.planet VALUES ('sunshine', 10000000, 12, 'n.o.', 6);
INSERT INTO public.planet VALUES ('spongi', 100, 13, 'n.o.', 4);
INSERT INTO public.planet VALUES ('simpsons', 189000, 14, 'n.o.', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('shine', 300, false, 2, 2);
INSERT INTO public.star VALUES ('bright', 20, false, 3, 1);
INSERT INTO public.star VALUES ('yellow', 200, true, 4, 1);
INSERT INTO public.star VALUES ('wagen', 500, true, 5, 3);
INSERT INTO public.star VALUES ('klWagen', 100, true, 6, 4);
INSERT INTO public.star VALUES ('grWagen', 600, false, 7, 5);


--
-- Name: food_food_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.food_food_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: food food_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (food_id);


--
-- Name: galaxy galaxy_animals_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_animals_key UNIQUE (animals);


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
-- Name: planet uq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet UNIQUE (name);


--
-- Name: star uq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star UNIQUE (name);


--
-- Name: moon uque_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uque_moon UNIQUE (name);


--
-- Name: food uque_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT uque_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

