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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(255) NOT NULL,
    description character varying(255),
    galaxy_type character varying(255),
    distance_from_earth_kpc numeric(6,2),
    size_kpc numeric(5,2),
    galaxy_id integer NOT NULL
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
    name character varying(255),
    description text,
    mass integer,
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
    name character varying(255),
    description text,
    has_life boolean,
    mass integer,
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
    name character varying(255),
    description character varying(255),
    mass numeric(7,4),
    star_type character varying(255),
    galaxy_id integer NOT NULL,
    has_planet boolean
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 511);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', 'Barred Spiral Galaxy', 0.00, 26.80, 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 'Barred Spiral Galaxy', 765.00, 46.56, 2);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 'The Triangulum Galaxy is a spiral galaxy 2.73 million light-years (ly) from Earth in the constellation Triangulum.', 'Magellanic spiral galaxy', 970.00, 18.74, 3);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 'The Large Magellanic Cloud (LMC) is a dwarf galaxy and satellite galaxy of the Milky Way.', 'Magellanic spiral galaxy', 49.97, 9.86, 4);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 'The Small Magellanic Cloud (SMC) is a dwarf galaxy near the Milky Way.', 'Irregular galaxy', 62.44, 5.78, 5);
INSERT INTO public.galaxy VALUES ('Centaurus A', 'Centaurus A (also known as NGC 5128 or Caldwell 77) is a galaxy in the constellation of Centaurus.', 'Lenticular galaxy', 3000.00, 18.40, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is Earths only natural satellite.', 0, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars', NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outer of the two natural satellites of Mars', NULL, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Io is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', 0, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa is the smallest of the four Galilean moons orbiting Jupiter', 0, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Callisto is the second-largest moon of Jupiter, after Ganymede.', 0, 5);
INSERT INTO public.moon VALUES (7, 'Amalthea', 'Amalthea is a moon of Jupiter. It has the third-closest orbit around Jupiter', NULL, 5);
INSERT INTO public.moon VALUES (8, 'Himalia', 'Himalia is the largest irregular satellite of Jupiter', NULL, 5);
INSERT INTO public.moon VALUES (9, 'Elara', 'Elara is a prograde irregular satellite of Jupiter.', NULL, 5);
INSERT INTO public.moon VALUES (10, 'Pasiphae', 'Pasiphae is a retrograde irregular satellite of Jupiter.', NULL, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Mimas, also designated Saturn I, is the seventh-largest natural satellite of Saturn.', NULL, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn and the 19th-largest in the Solar System.', NULL, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 'Tethys is the fifth-largest moon of Saturn,', NULL, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 'Dione also designated Saturn IV, is the fourth-largest moon of Saturn.', NULL, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', NULL, 6);
INSERT INTO public.moon VALUES (16, 'Titan', 'Titan is the largest moon of Saturn and the second-largest in the Solar System. It is the only moon known to have an atmosphere denser than the Earth', 0, 6);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Ariel is the fourth-largest moon of Uranus.', NULL, 8);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Umbriel is the third-largest moon of Uranus.', NULL, 8);
INSERT INTO public.moon VALUES (19, 'Triton', 'Triton is the largest natural satellite of the planet Neptune.', NULL, 7);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Nereid is the third-largest moon of Neptune.', NULL, 7);
INSERT INTO public.moon VALUES (21, 'Sinope', 'Sinope is a retrograde irregular satellite of Jupiter', NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System.', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth.', false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron(III) oxide dust, giving it the nickname "the Red Planet".', false, 0, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than 2.5 times that of all the other planets in the Solar System.', false, 1321, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second largest in the Solar System, after Jupiter.', false, 95, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant.', false, 15, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Neptune is the eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter.', false, 17, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Proxima Centauri d (also called Proxima d) is an exoplanet orbiting the red dwarf star Proxima Centauri.', false, 1, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 'Proxima Centauri c is an exoplanet candidate claimed to be orbiting the red dwarf star Proxima Centauri.', false, 7, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 'Proxima Centauri d (also called Proxima d) is an exoplanet orbiting the red dwarf star Proxima Centauri.', false, 0, 2);
INSERT INTO public.planet VALUES (12, 'Wolf 359 b', 'Wolf 359 b is an exoplanet orbiting the red dwarf Wolf 359 it is classified as a cool super-Neptune.', false, 44, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 1.0000, 'Yellow dwarf', 1, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Proxima Centauri is a small, low-mass star located 4.2465 light-years (1.3020 pc) away from the Sun.', 0.1220, 'Red dwarf', 1, true);
INSERT INTO public.star VALUES (3, 'Wolf 359', 'Wolf 359 is a red dwarf star located in the constellation Leo, near the ecliptic.', 0.0900, 'Red dwarf', 1, false);
INSERT INTO public.star VALUES (4, 'Sirius A', 'Sirius is the brightest star in the night sky.', 2.0630, 'A dwarf star', 1, false);
INSERT INTO public.star VALUES (5, 'Van Maanen 2', 'Van Maanen 2 is the closest known solitary white dwarf to the Solar System.', 0.6700, 'White dwarf', 1, false);
INSERT INTO public.star VALUES (6, 'Luhman 16 A', 'Luhman 16 A is a binary brown-dwarf in the southern constellation Vela.', 0.0320, 'Brown dwarf', 1, false);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

