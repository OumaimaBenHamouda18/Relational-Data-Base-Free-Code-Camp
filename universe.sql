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
    has_life boolean,
    description text,
    distance_from_earth numeric,
    galaxy_types integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    distance_from_earth numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_fk_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_fk_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_fk_planet_seq OWNER TO freecodecamp;

--
-- Name: moon_fk_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_fk_planet_seq OWNED BY public.moon.planet_id;


--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    distance_from_earth numeric,
    planet_types integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_fk_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_fk_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_fk_star_seq OWNER TO freecodecamp;

--
-- Name: planet_fk_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_fk_star_seq OWNED BY public.planet.star_id;


--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(30) NOT NULL,
    planet_types_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_fk_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_fk_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_fk_galaxy_seq OWNER TO freecodecamp;

--
-- Name: star_fk_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_fk_galaxy_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_fk_planet_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_fk_star_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_fk_galaxy_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'The Milky Way is the galaxy that contains our Solar System, with the name describing the galaxy''s appearance from Earth: a dim glowing band arching across the night sky.', 0, -1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'The Andromeda Galaxy is a spiral galaxy approximately 2.537 million light-years from Earth, making it the nearest spiral galaxy to the Milky Way.', 2537000, -1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'The Triangulum Galaxy is a spiral galaxy approximately 2.723 million light-years from Earth. It is the third-largest galaxy in the Local Group, after the Milky Way and Andromeda.', 2723000, -1);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', false, 'Messier 81 is a spiral galaxy in the constellation of Ursa Major.', 11.8, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.', 28.0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy in the constellation Canes Venatici.', 23.0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Luna', false, 'La Luna es el único satélite natural de la Tierra.', 0.0, 3);
INSERT INTO public.moon VALUES (5, 'Proxima Centauri b Moon', false, 'This is a hypothetical moon orbiting Proxima b.', 0.0, 4);
INSERT INTO public.moon VALUES (6, 'Sirius B Moon', false, 'This is a hypothetical moon orbiting Aurora.', 0.0, 5);
INSERT INTO public.moon VALUES (7, 'Phobos', false, 'Phobos is the larger and closer of the two natural satellites of Mars.', 0.003, 9);
INSERT INTO public.moon VALUES (8, 'Deimos', false, 'Deimos is the smaller and outermost of the two natural satellites of Mars.', 0.006, 9);
INSERT INTO public.moon VALUES (9, 'Ganymede', false, 'Ganymede is the largest moon of Jupiter and in the Solar System.', 4.61, 10);
INSERT INTO public.moon VALUES (10, 'Callisto', false, 'Callisto is the second-largest moon of Jupiter, after Ganymede.', 6.7, 10);
INSERT INTO public.moon VALUES (11, 'Titan', false, 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 1.27, 11);
INSERT INTO public.moon VALUES (12, 'Enceladus', false, 'Enceladus is the sixth-largest moon of Saturn.', 1.27, 11);
INSERT INTO public.moon VALUES (13, 'Triton', false, 'Triton is the largest natural satellite of Neptune.', 30.1, 12);
INSERT INTO public.moon VALUES (14, 'Charon', false, 'Charon is the largest of the five known natural satellites of Pluto.', 39.5, 13);
INSERT INTO public.moon VALUES (15, 'Europa', false, 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', 4.43, 10);
INSERT INTO public.moon VALUES (16, 'Io', false, 'Io is the innermost of the four Galilean moons orbiting Jupiter.', 4.22, 10);
INSERT INTO public.moon VALUES (17, 'Rhea', false, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', 4.52, 11);
INSERT INTO public.moon VALUES (18, 'Dione', false, 'Dione is the fourth-largest moon of Saturn, named after the Titaness Dione of Greek mythology.', 4.48, 11);
INSERT INTO public.moon VALUES (19, 'Mimas', false, 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.', 4.58, 11);
INSERT INTO public.moon VALUES (20, 'Miranda', false, 'Miranda is the smallest and innermost of Uranus''s five round satellites.', 9.7, 14);
INSERT INTO public.moon VALUES (21, 'Titania', false, 'Titania is the largest moon of Uranus and the eighth-largest moon in the Solar System.', 9.8, 14);
INSERT INTO public.moon VALUES (22, 'Oberon', false, 'Oberon is the outermost major moon of the planet Uranus.', 9.9, 14);
INSERT INTO public.moon VALUES (23, 'Ariel', false, 'Ariel is the fourth-largest of the 27 known moons of Uranus.', 9.6, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', true, 'The third planet from the Sun and the only known planet to support life.', 1.0, 1, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', true, 'Proxima b is a planet orbiting Proxima Centauri, the closest star to the Sun.', 4.24, 1, 2);
INSERT INTO public.planet VALUES (5, 'Aurora', false, 'Aurora is a gas giant in orbit around Sirius, a binary star system.', 8.6, 2, 3);
INSERT INTO public.planet VALUES (6, 'Mars', false, 'Mars is the fourth planet from the Sun and the second smallest planet in the Solar System.', 1.5, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Venus', false, 'Venus is the second planet from the Sun, named after the Roman goddess of love and beauty.', 0.72, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', false, 'Mercury is the smallest and innermost planet in the Solar System.', 0.39, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', true, 'Kepler-452b is an exoplanet orbiting the Sun-like star Kepler-452.', 1402.0, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581c', true, 'Gliese 581c is an exoplanet orbiting the red dwarf star Gliese 581.', 20.3, NULL, 2);
INSERT INTO public.planet VALUES (11, 'HD 189733b', false, 'HD 189733b is an exoplanet orbiting the star HD 189733 A.', 63.4, NULL, 3);
INSERT INTO public.planet VALUES (12, 'PSR B1257+12 b', false, 'PSR B1257+12 b is an exoplanet orbiting the pulsar PSR B1257+12.', 2300.0, NULL, 3);
INSERT INTO public.planet VALUES (13, '51 Pegasi b', false, '51 Pegasi b is an exoplanet orbiting the star 51 Pegasi.', 50.9, NULL, 4);
INSERT INTO public.planet VALUES (14, 'Jupiter', false, 'Jupiter is the fifth planet from the Sun and the largest planet in the Solar System.', 5.2, NULL, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('Terrestrial', 1, 'Terrestrial planets are rocky planets with solid surfaces, similar to Earth.');
INSERT INTO public.planet_types VALUES ('Gas Giant', 2, 'Gas giants are large planets primarily composed of hydrogen and helium, with no solid surface.');
INSERT INTO public.planet_types VALUES ('Ice Giant', 3, 'Ice giants are planets composed mostly of elements heavier than hydrogen and helium, such as water, ammonia, and methane.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', true, 'El Sol es la estrella en el centro del Sistema Solar.', 0.0, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', false, 'Alpha Centauri es un sistema estelar triple, el más cercano al Sistema Solar.', 4.37, 2);
INSERT INTO public.star VALUES (3, 'Polaris', false, 'Polaris es la estrella más brillante en la constelación de la Osa Menor.', 433.8, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', false, 'Alpha Centauri A is the primary component of the Alpha Centauri star system.', 4.37, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', false, 'Betelgeuse is a red supergiant star in the constellation of Orion.', 643.0, 1);
INSERT INTO public.star VALUES (6, 'Rigel', false, 'Rigel is a blue supergiant star in the constellation of Orion.', 863.0, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_fk_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_fk_planet_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_fk_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_fk_star_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 3, true);


--
-- Name: star_fk_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_fk_galaxy_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: planet_types name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_column UNIQUE (name);


--
-- Name: galaxy unique_column_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_column_galaxy UNIQUE (name);


--
-- Name: moon unique_column_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_column_moon UNIQUE (name);


--
-- Name: star unique_column_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_column_star UNIQUE (name);


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

