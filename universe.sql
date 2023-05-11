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
    description_shape text,
    age_of_stars numeric,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    planet_id integer,
    time_to_complete_one_circle numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    des_color text,
    is_spherical boolean,
    diameter integer,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_types (
    universe_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.universe_types OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Elliptical', 'Ellipsoidal in shape', 8789, 'Yellow-Red');
INSERT INTO public.galaxy VALUES (2, 'Spiral', 'Spiral-arms in shape', 68789, 'Arms-Blue Center-Red');
INSERT INTO public.galaxy VALUES (3, 'Barred-Spiral', 'Linear in shape', 789, 'Bright Blue');
INSERT INTO public.galaxy VALUES (4, 'Irregular', 'Lack of shape', 7889, 'No specific syemmetry');
INSERT INTO public.galaxy VALUES (5, 'Peculiar', 'Irregular', 77889, 'Orange and Blue');
INSERT INTO public.galaxy VALUES (6, 'Lenticular', 'Spiral', 1689, 'Golden Orange');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, NULL, 3, 29.5);
INSERT INTO public.moon VALUES ('Phobos', 2, 'Romon God', 4, 1);
INSERT INTO public.moon VALUES ('Deimos', 3, 'Irregular rocky object', 4, 2.5);
INSERT INTO public.moon VALUES ('Amalthea', 4, 'Circular object', 5, 2.5);
INSERT INTO public.moon VALUES ('Callisto', 5, 'Discoverd by Galileo', 5, 2);
INSERT INTO public.moon VALUES ('Europa', 6, 'Discoverd by Galileo', 5, 52);
INSERT INTO public.moon VALUES ('Dione', 7, 'Discoverd by Casini in 1964', 6, 80);
INSERT INTO public.moon VALUES ('Enceladus', 8, 'Discoverd by Casini in 1964', 6, 40);
INSERT INTO public.moon VALUES ('Lapetus', 9, 'Discoverd by Casini in 1671', 6, 32);
INSERT INTO public.moon VALUES ('Mimas', 10, 'Discoverd by English astronomer', 6, 32);
INSERT INTO public.moon VALUES ('Phoebe', 11, 'Discoverd by American astronomer', 6, 92);
INSERT INTO public.moon VALUES ('Ariel', 12, 'Discoverd by American astronomer', 7, 92);
INSERT INTO public.moon VALUES ('Titania', 13, 'Discoverd by William', 7, 92);
INSERT INTO public.moon VALUES ('Umbriel', 14, 'Discoverd by William', 7, 39);
INSERT INTO public.moon VALUES ('Oberon', 15, 'Discoverd by William', 7, 9);
INSERT INTO public.moon VALUES ('Nereid', 16, 'Discoverd by Gerard', 8, 10);
INSERT INTO public.moon VALUES ('Triton', 17, 'Discoverd by Gerard', 8, 10);
INSERT INTO public.moon VALUES ('Thetys', 18, 'Discoverd by Gerard', 6, 10);
INSERT INTO public.moon VALUES ('Rhea', 19, 'Discoverd by Gerard', 8, 10);
INSERT INTO public.moon VALUES ('lo', 20, 'Discoverd by Gerard', 8, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mars', 'Red,Brown and Tan', NULL, 6792, 4, 1);
INSERT INTO public.planet VALUES ('Uranus', 'Blue and Green', false, 51118, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 'Blue', false, 49528, 8, 1);
INSERT INTO public.planet VALUES ('Pegasai b', 'Brown', true, 6528, 9, 2);
INSERT INTO public.planet VALUES ('Cancri b', 'Blue', false, 9528, 10, 2);
INSERT INTO public.planet VALUES ('Ursae Majoris c', 'White', false, 67528, 11, 3);
INSERT INTO public.planet VALUES ('Umi', 'Brown and Orange', false, 16528, 12, 4);
INSERT INTO public.planet VALUES ('Mercury', 'Grey', NULL, 4879, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 'Brown and Grey', true, 12104, 2, 1);
INSERT INTO public.planet VALUES ('Earth', 'Blue,White,Brown and Green', true, 12756, 3, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'Brown,Orange and White cold strips', true, 142984, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 'Brown,Golden and Grey', NULL, 120536, 6, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', true, 'Golden Yellow Color', 1, 1);
INSERT INTO public.star VALUES ('Spika', false, 'Blue Color', 2, 1);
INSERT INTO public.star VALUES ('Sirius A', false, 'Sky Blue Color', 3, 4);
INSERT INTO public.star VALUES ('Proxima Centuri', false, 'Red Color', 4, 5);
INSERT INTO public.star VALUES ('Deneb', true, 'Blue Color', 5, 5);
INSERT INTO public.star VALUES ('Aldebaran', false, 'Red Color', 6, 1);


--
-- Data for Name: universe_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_types VALUES (1, 'Omniverse', 456);
INSERT INTO public.universe_types VALUES (2, 'Tetraverse', 8456);
INSERT INTO public.universe_types VALUES (3, 'Hyperverse', 856);


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
-- Name: universe_types universe_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_types
    ADD CONSTRAINT universe_types_name_key UNIQUE (name);


--
-- Name: universe_types universe_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_types
    ADD CONSTRAINT universe_types_pkey PRIMARY KEY (universe_types_id);


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

