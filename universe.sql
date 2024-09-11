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
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    code_name character varying(30)
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    name character varying(30) NOT NULL,
    lifespan integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    code_name character varying(30),
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
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    code_name character varying(30),
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
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    code_name character varying(30),
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Galaxy_1', 10, 100, 'Galaxy 1', 'G1');
INSERT INTO public.galaxy VALUES (2, 'Galaxy_2', 20, 200, 'Galaxy 2', 'G2');
INSERT INTO public.galaxy VALUES (3, 'Galaxy_3', 30, 300, 'Galaxy 3', 'G3');
INSERT INTO public.galaxy VALUES (4, 'Galaxy_4', 40, 400, 'Galaxy 4', 'G4');
INSERT INTO public.galaxy VALUES (5, 'Galaxy_5', 50, 500, 'Galaxy 5', 'G5');
INSERT INTO public.galaxy VALUES (6, 'Galaxy_6', 60, 600, 'Galaxy 6', 'G6');


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (4, 'Human', 100);
INSERT INTO public.lifeform VALUES (5, 'Cat', 20);
INSERT INTO public.lifeform VALUES (6, 'Dog', 30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (16, 'Luna', 4500, 0.384, 'Earth''s only natural satellite', 'LNA', 1);
INSERT INTO public.moon VALUES (17, 'Phobos', 4503, 77.79, 'Larger and inner moon of Mars', 'PHB', 2);
INSERT INTO public.moon VALUES (18, 'Deimos', 4503, 77.79, 'Smaller and outer moon of Mars', 'DMO', 2);
INSERT INTO public.moon VALUES (19, 'Io', 4500, 628.3, 'Most volcanically active body in the Solar System', 'IOO', 3);
INSERT INTO public.moon VALUES (20, 'Europa', 4500, 628.3, 'Smallest of Jupiter''s Galilean moons', 'ERP', 3);
INSERT INTO public.moon VALUES (21, 'Ganymede', 4500, 628.3, 'Largest moon in the Solar System', 'GNM', 3);
INSERT INTO public.moon VALUES (22, 'Callisto', 4500, 628.3, 'Second-largest moon of Jupiter', 'CLT', 3);
INSERT INTO public.moon VALUES (23, 'Titan', 4003, 1257.1, 'Largest moon of Saturn', 'TTN', 5);
INSERT INTO public.moon VALUES (24, 'Enceladus', 4500, 1257.1, 'Sixth-largest moon of Saturn', 'ENC', 5);
INSERT INTO public.moon VALUES (25, 'Mimas', 4100, 1257.1, 'Smallest astronomical body known to be rounded in shape', 'MMS', 5);
INSERT INTO public.moon VALUES (26, 'Triton', 4500, 4338.9, 'Largest natural satellite of Neptune', 'TRT', 6);
INSERT INTO public.moon VALUES (27, 'Nereid', 4500, 4338.9, 'Third-largest moon of Neptune', 'NRD', 6);
INSERT INTO public.moon VALUES (28, 'Charon', 4500, 5906.4, 'Largest moon of Pluto', 'CHR', 7);
INSERT INTO public.moon VALUES (29, 'Oberon', 4500, 2723.3, 'Outermost major moon of Uranus', 'OBR', 8);
INSERT INTO public.moon VALUES (30, 'Titania', 4500, 2723.3, 'Largest moon of Uranus', 'TTA', 8);
INSERT INTO public.moon VALUES (31, 'Miranda', 4500, 2723.3, 'Smallest of Uranus'' five round satellites', 'MRN', 8);
INSERT INTO public.moon VALUES (32, 'Puck', 4500, 2723.3, 'Small moon of Uranus', 'PCK', 8);
INSERT INTO public.moon VALUES (33, 'Amalthea', 4500, 588, 'Third closest moon of Jupiter', 'AMT', 3);
INSERT INTO public.moon VALUES (34, 'Thebe', 4500, 588, 'Fourth moon of Jupiter', 'THB', 3);
INSERT INTO public.moon VALUES (35, 'Dione', 4500, 1257.1, 'Fourth-largest moon of Saturn', 'DNE', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543, 0, 'Our home planet', true, true, 'ETH', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4603, 225, 'The Red Planet', false, true, 'MRS', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4603, 588, 'Largest planet in our solar system', false, true, 'JPT', 2);
INSERT INTO public.planet VALUES (4, 'Venus', 4503, 38, 'Second planet from the Sun', false, true, 'VNS', 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 4503, 1195, 'Known for its prominent ring system', false, true, 'STN', 3);
INSERT INTO public.planet VALUES (6, 'Neptune', 4503, 4351, 'Windiest planet in our solar system', false, true, 'NPT', 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 4503, 77, 'Smallest planet in our solar system', false, true, 'MRC', 4);
INSERT INTO public.planet VALUES (8, 'Uranus', 4503, 2871, 'Ice giant with tilted axis', false, true, 'URN', 4);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 4000, 582, 'First Earth-sized planet in habitable zone', false, true, 'KPL', 5);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 4500, 159, 'First exoplanet seen transiting its star', false, true, 'HDB', 5);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 4850, 40, 'Closest known exoplanet to Solar System', false, true, 'PCB', 6);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 7600, 39, 'Potentially habitable exoplanet', false, true, 'TRP', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 200, 8.6, 'Brightest star in Earth''s night sky', 'SR1', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8, 642.5, 'Red supergiant in Orion', 'BT2', 2);
INSERT INTO public.star VALUES (3, 'Vega', 455, 25, 'Fifth-brightest star in the night sky', 'VG3', 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4850, 4.2, 'Closest known star to the Sun', 'PC4', 4);
INSERT INTO public.star VALUES (5, 'Antares', 11, 604.5, 'Brightest star in Scorpius', 'AN5', 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 4850, 4.37, 'Primary star of the Alpha Centauri system', 'ACA6', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 35, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_name_key UNIQUE (code_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_key UNIQUE (name);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_name_key UNIQUE (code_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_name_key UNIQUE (code_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_name_key UNIQUE (code_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

