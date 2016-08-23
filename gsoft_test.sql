-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 23 2016 г., 12:16
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gsoft_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `text`) VALUES
(1, 1, 1, 'test'),
(2, 1, 1, '42'),
(3, 1, 1, 'test'),
(4, 1, 1, '42'),
(5, 3, 1, 'add test'),
(6, 3, 1, 'add test');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `publication_date` datetime NOT NULL,
  `upload_date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `description` text COLLATE utf32_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `publication_date`, `upload_date`, `title`, `description`, `img_url`, `url`) VALUES
(1, '2016-08-22 16:17:00', '2016-08-23 13:11:57', 'A Moon''s Contrasts', 'Dione reveals its past via contrasts in this view from NASA''s Cassini spacecraft.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20492-1041.jpg', 'http://www.nasa.gov/image-feature/jpl/pia20492/a-moons-contrasts'),
(2, '2016-08-19 16:38:00', '2016-08-23 13:11:57', 'Fuselage of NASA''s Future X-57 Maxwell All-Electric Aircraft', 'As NASA celebrates National Aviation Day, the agency''s innovators are working to transform air transportation to meet the future needs of the global aviation community. The agency is embarking on a 10-year plan, New Aviation Horizons, that will see NASA field a number of experimental aircraft to demonstrate 21st century ideas for flight.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/afrc2016-0212-100.jpg', 'http://www.nasa.gov/image-feature/fuselage-of-nasas-future-x-57-maxwell-all-electric-aircraft'),
(3, '2016-08-18 15:47:00', '2016-08-23 13:11:57', 'Plugging Away Inside Massive SLS Fuel Tank: Welders Complete Final Plug Fusion Welds on SLS Liquid Hydrogen Tank', 'Welders inside a large liquid hydrogen tank for NASA''s Space Launch System at the Michoud Assembly Facility in New Orleans are plugging holes left after the tank was assembled.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/maf_20160805_sf02_p_lh2_qual_fusion_welds-148.jpg', 'http://www.nasa.gov/centers/marshall/michoud/welders-complete-sls-liquid-hydrogen-tank'),
(4, '2016-08-17 16:39:00', '2016-08-23 13:11:57', 'Supernova Ejected from the Pages of History', 'A new look at the debris from an exploded star in our galaxy has astronomers re-examining when the supernova actually happened.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/g11.jpg', 'http://www.nasa.gov/mission_pages/chandra/supernova-ejected-from-the-pages-of-history.html'),
(5, '2016-08-16 16:57:00', '2016-08-23 13:11:57', 'Lake Powell From the Space Station''s EarthKAM', 'The remotely controlled Sally Ride EarthKAM aboard the International Space Station acquired this photograph on July 14, 2016, as the orbiting laboratory flew over Lake Powell and the border of Utah and Arizona. Located on the Colorado River, Lake Powell is the second largest artificial reservoir in the United States.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/ccfid_111329_2016196161113_image.jpg', 'http://www.nasa.gov/image-feature/lake-powell-from-the-space-stations-earthkam'),
(6, '2016-08-15 16:28:00', '2016-08-23 13:11:57', 'Astronauts Kate Rubins and Jeff Williams Prepare For a Spacewalk', 'Expedition 48 crew members Kate Rubins (left) and Jeff Williams (right) of NASA outfit spacesuits inside of the Quest airlock aboard the International Space Station. Rubins and Williams will conduct a spacewalk on Friday, Aug. 19, 2016, to install a new docking port that will enable the future arrival of U.S. commercial crew spacecraft.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/28111335603_7527bc33da_o.jpg', 'http://www.nasa.gov/image-feature/astronauts-kate-rubins-and-jeff-williams-prepare-for-a-spacewalk'),
(7, '2016-08-12 14:30:00', '2016-08-23 13:11:57', 'Perseid Meteor Shower 2016 from West Virginia', 'In this 30 second exposure, a meteor streaks across the sky during the annual Perseid meteor shower Friday, Aug. 12, 2016 in Spruce Knob, West Virginia.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/nhq201608120002.jpg', 'http://www.nasa.gov/image-feature/perseid-meteor-shower-2016-from-west-virginia'),
(8, '2016-08-11 17:34:00', '2016-08-23 13:11:57', 'Site of 2016 Summer Olympic Games Viewed by NASA''s MISR Instrument', 'The Multi-angle Imaging SpectroRadiometer (MISR) instrument aboard NASA''s Terra satellite passed directly over Rio de Janeiro on Aug. 2, 2016, just prior to the opening of the Summer Olympic Games. On the left is an image from MISR''s nadir camera; on the right, a map of aerosol optical depth.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20885.jpg', 'http://www.nasa.gov/image-feature/site-of-2016-summer-olympic-games-viewed-by-nasas-misr-instrument'),
(9, '2016-08-10 17:00:00', '2016-08-23 13:11:57', 'A Black Hole Story Told by a Cosmic Blob and Bubble', 'Two cosmic structures show evidence for a remarkable change in behavior of a supermassive black hole in a distant galaxy.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/ic2497.jpg', 'http://www.nasa.gov/mission_pages/chandra/a-black-hole-story-told-by-a-cosmic-blob-and-bubble.html'),
(10, '2016-08-09 17:34:00', '2016-08-23 13:11:57', 'Infrared Saturn Clouds', 'This false-color view from NASA''s Cassini spacecraft shows clouds in Saturn''s northern hemisphere. The view was made using images taken by Cassini''s wide-angle camera on July 20, 2016, using a combination of spectral filters sensitive to infrared light at 750, 727 and 619 nanometers.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/7395_saturn_gill_infrared.jpg', 'http://www.nasa.gov/image-feature/infrared-saturn-clouds'),
(11, '2016-08-08 16:55:00', '2016-08-23 13:11:57', 'Aurora and Manicouagan Crater', 'An astronaut aboard the International Space Station adjusted the camera for night imaging and captured the green veils and curtains of an aurora that spanned thousands of kilometers over Quebec, Canada.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss030e110900_lrg.jpg', 'http://www.nasa.gov/image-feature/aurora-and-manicouagan-crater'),
(12, '2016-08-05 16:44:00', '2016-08-23 13:11:57', 'Neil Armstrong in NASA Ames'' Bell X-14 Aircraft', 'Neil A. Armstrong is photographed in the cockpit of the Ames Bell X-14 aircraft at NASA''s Ames Research Center. Armstrong, the first man to walk on the moon, was born in Wapakoneta, Ohio, on August 5, 1930.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/7901650998_5b650b7976_o.jpg', 'http://www.nasa.gov/image-feature/neil-armstrong-in-nasa-ames-bell-x-14-aircraft'),
(13, '2016-08-04 13:57:00', '2016-08-23 13:11:57', 'Curiosity''s Arm Over ''Marimba'' Target on Mount Sharp', 'NASA''s Curiosity Mars rover began close-up investigation of a target called "Marimba," on lower Mount Sharp, during the week preceding the fourth anniversary of the mission''s dramatic sky-crane landing.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20764-1041.jpg', 'http://www.nasa.gov/image-feature/jpl/pia20764/curiositys-arm-over-marimba-target-on-mount-sharp'),
(14, '2016-08-02 22:27:00', '2016-08-23 13:11:57', 'Astronauts Test Orion Docking Hatch For Future Missions', 'Engineers and astronauts conducted testing in a representative model of the Orion spacecraft at NASA’s Johnson Space Center in Houston to gather the crew''s feedback on the design of the docking hatch and on post-landing equipment operations.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/p1010194.jpg', 'http://www.nasa.gov/image-feature/astronauts-test-orion-docking-hatch-for-future-missions'),
(15, '2016-08-02 16:34:00', '2016-08-23 13:11:57', 'Field Testing NASA''s New Carbon-Dioxide Measuring Instrument', 'A team of NASA scientists and engineers is poised to realize a lifetime goal: building an instrument powerful and accurate enough to gather around-the-clock global atmospheric carbon-dioxide (CO2) measurements from space. Developers of the CO2 Sounder Lidar instrument snapped this photo during a field campaign over California and Nevada.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/dsc_1488_sciflt_south_of_elko.jpg', 'http://www.nasa.gov/image-feature/field-testing-nasas-new-carbon-dioxide-measuring-instrument'),
(16, '2016-08-01 18:31:00', '2016-08-23 13:11:57', 'Acadia National Park', 'Acadia National Park is one of the most visited parks in America, drawing more than 2.5 million visitors per year to the craggy, jagged coast of Maine. The park is celebrating its 100th anniversary in 2016. On September 6, 2015, the Operational Land Imager (OLI) on the Landsat 8 satellite acquired these images of the park and its surroundings.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/acadia_oli_2015249_lrg.jpg', 'http://www.nasa.gov/image-feature/acadia-national-park'),
(17, '2016-07-29 17:08:00', '2016-08-23 13:11:57', 'Space Station View of the Chesapeake Bay', 'On July 21, 2016, Expedition 48 Commander Jeff Williams of NASA shared this photograph of sunglint illuminating the waters of the Chesapeake Bay, writing, "Morning passing over the Chesapeake Bay heading across the Atlantic."', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss048-e-28526.jpg', 'http://www.nasa.gov/image-feature/space-station-view-of-the-chesapeake-bay'),
(18, '2016-07-28 18:50:00', '2016-08-23 13:11:57', 'A Black Hole ‘Choir’', 'The blue dots in this field of galaxies, known as the COSMOS field, show galaxies that contain supermassive black holes emitting high-energy X-rays.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20865.jpg', 'http://www.nasa.gov/image-feature/jpl/pia20865/a-black-hole-choir'),
(19, '2016-07-27 17:45:00', '2016-08-23 13:11:57', 'The Loneliest Young Star', 'An unusual celestial object called CX330 was first detected as a source of X-ray light in 2009. It has been launching “jets” of material into the gas and dust around it.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20700.jpg', 'http://www.nasa.gov/image-feature/jpl/pia20700/the-loneliest-young-star'),
(20, '2016-07-26 15:59:00', '2016-08-23 13:11:57', 'Cockpit of the First All-Electric Propulsion Aircraft', 'NASA’s Scalable Convergent Electric Propulsion Technology and Operations Research (SCEPTOR) project has reached a critical milestone, where the electric propulsion integration and conversion of the Tecnam P2006T aircraft into the X-57 will commence.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/afrc2016-0212-109.jpg', 'http://www.nasa.gov/image-feature/cockpit-of-the-first-all-electric-propulsion-aircraft'),
(21, '2016-07-25 15:24:00', '2016-08-23 13:11:57', 'Hubble Views a Galaxy Fit to Burst', 'This NASA/ESA Hubble Space Telescope image reveals the vibrant core of the galaxy NGC 3125. Discovered by John Herschel in 1835, NGC 3125 is a great example of a starburst galaxy — a galaxy in which unusually high numbers of new stars are forming, springing to life within intensely hot clouds of gas.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/hubble_monday_07252016.jpg', 'http://www.nasa.gov/image-feature/goddard/2016/hubble-views-a-galaxy-fit-to-burst'),
(22, '2016-07-22 15:53:00', '2016-08-23 13:11:57', 'Aquanauts Splash Down, Beginning NEEMO 21 Research Mission', 'The NASA Extreme Environment Mission Operations (NEEMO) 21 mission began on July 21, 2016, as an international crew of aquanauts splashed down to the undersea Aquarius Reef Base, 62 feet below the surface of the Atlantic Ocean. The NEEMO 21 crew will perform research both inside and outside the habitat during a 16-day simulated space mission.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/cn7b4dnwgaar5ph.jpg', 'http://www.nasa.gov/image-feature/aquanauts-splash-down-beginning-neemo-21-research-mission'),
(23, '2016-07-21 16:04:00', '2016-08-23 13:11:57', 'NASA''s Hubble Looks to the Final Frontier', 'This view of a massive cluster of galaxies unveils a very cluttered-looking universe filled with galaxies near and far. Some are distorted like a funhouse mirror through a "space warp" phenomenon first predicted by Einstein a century ago.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/p1628a1nowords.jpg', 'http://www.nasa.gov/image-feature/nasas-hubble-looks-to-the-final-frontier'),
(24, '2016-07-20 17:30:00', '2016-08-23 13:11:57', 'Sunset at the Viking Lander 1 Site', 'On July 20, 1976, at 8:12 a.m. EDT, NASA received the signal that the Viking Lander 1 successfully reached the Martian surface. This major milestone represented the first time the United States successfully landed a vehicle on the surface of Mars, collecting an overwhelming amount of data that would soon be used in future NASA missions.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia00567a.jpg', 'http://www.nasa.gov/image-feature/sunset-at-the-viking-lander-1-site'),
(25, '2016-07-19 16:24:00', '2016-08-23 13:11:57', 'Melt Water Over Arctic Sea Ice', 'Sea ice across the Arctic Ocean is shrinking to below-average levels this summer. NASA’s Operation IceBridge, an airborne survey of polar ice, just completed its first flights studying the aquamarine pools of melt water on the ice surface that may be accelerating the overall sea ice retreat.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/largemeltpond14july16.jpg', 'http://www.nasa.gov/image-feature/melt-water-over-arctic-sea-ice'),
(26, '2016-07-18 13:30:00', '2016-08-23 13:11:57', 'Not Really Starless at Saturn', 'Saturn''s main rings, along with its and moons, are much brighter than most stars.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20489.jpg', 'http://www.nasa.gov/image-feature/jpl/not-really-starless-at-saturn'),
(27, '2016-07-15 14:24:00', '2016-08-23 13:11:57', 'Hubble Spots a Secluded Starburst Galaxy', 'This image, taken by the NASA/ESA Hubble Space Telescope’s Advanced Camera for Surveys (ACS), shows a starburst galaxy named MCG+07-33-027. This galaxy lies some 300 million light-years away from us, and is currently experiencing an extraordinarily high rate of star formation — a starburst.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/hubble_friday_07152016.jpg', 'http://www.nasa.gov/image-feature/goddard/2016/hubble-spots-a-secluded-starburst-galaxy'),
(28, '2016-07-14 17:18:00', '2016-08-23 13:11:57', 'Western Cuba and Gulf of Batabanó', 'Expedition 48 Commander Jeff Williams of NASA captured photographs of western Cuba and the Gulf of Batabanó as the International Space Station flew overhead. Williams shared this composite image on social media, writing, "Wow! Look at how the navy blue contrasts with the aqua, Gulf of Batabano Cuba."', 'http://www.nasa.gov/sites/default/files/thumbnails/image/jsc2016e055921.jpg', 'http://www.nasa.gov/image-feature/western-cuba-and-gulf'),
(29, '2016-07-13 16:42:00', '2016-08-23 13:11:57', 'Looking Up at New Work Platforms in the Vehicle Assembly Building', 'In this view looking up from the floor of the Vehicle Assembly Building at NASA’s Kennedy Space Center, four levels of new work platforms are now installed on the north and south sides of High Bay 3. The G-level work platforms are the fourth of 10 levels that will surround and provide access to the Space Launch System rocket and Orion spacecraft.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27940134825_a000e40469_o.jpg', 'http://www.nasa.gov/image-feature/looking-up-at-new-work-platforms-in-the-vehicle-assembly-building'),
(30, '2016-07-12 16:47:00', '2016-08-23 13:11:57', 'Researching 3D Printing Technology on the Space Station', 'Crew members on the International Space Station re-installed the first 3D printer in orbit, during the week of June 27, 2016, to continue research on the developing technology and how it can be used in space. NASA astronaut Jeff Williams installed the printer in the Microgravity Science Glovebox to begin another round of sample builds.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss048e015246.jpg', 'http://www.nasa.gov/image-feature/researching-3d-printing-technology-on-the-space-station'),
(31, '2016-07-11 16:53:00', '2016-08-23 13:11:58', 'Paris at Night', 'Around local midnight time on April 8, 2015, astronauts aboard the International Space Station took this photograph of Paris, often referred to as the “City of Light.” The pattern of the street grid dominates at night, providing a completely different set of visual features from those visible during the day.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss043e093480_lrg.jpg', 'http://www.nasa.gov/image-feature/paris-at-night'),
(32, '2016-07-08 17:10:00', '2016-08-23 13:11:58', 'Martian Morse Code', 'This image of dark dunes on Mars was taken on Feb. 6, 2016, by the HiRISE camera on NASA''s Mars Reconnaissance Orbiter. These dunes are influenced by local topography. The shape and orientation of dunes can usually tell us about wind direction, but in this image, the dune-forms are very complex, so it’s difficult to know the wind direction.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/esp_044675_2580.jpg', 'http://www.nasa.gov/image-feature/martian-morse-code'),
(33, '2016-07-07 04:03:00', '2016-08-23 13:11:58', 'Expedition 48 Crew Launches to the International Space Station', 'The Soyuz MS-01 spacecraft launches from the Baikonur Cosmodrome with Expedition 48-49 crewmembers Kate Rubins of NASA, Anatoly Ivanishin of Roscosmos and Takuya Onishi of the Japan Aerospace Exploration Agency (JAXA) onboard, Thursday, July 7, 2016, Kazakh time (July 6 Eastern time), Baikonur, Kazakhstan.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/nhq201607070004.jpg.jpeg', 'http://www.nasa.gov/image-feature/expedition-48-crew-launches-to-the-international-space-station'),
(34, '2016-07-06 16:20:00', '2016-08-23 13:11:58', 'Expedition 48 Soyuz Rollout', 'The Soyuz MS-01 spacecraft is raised vertical after it was rolled out by train to the launch pad at the Baikonur Cosmodrome, Kazakhstan, Monday, July 4, 2016. NASA astronaut Kate Rubins, cosmonaut Anatoly Ivanishin of Roscosmos, and astronaut Takuya Onishi of JAXA will launch to the International Space Station the evening of July 6 Eastern time.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/28080162595_65d5012e24_o.jpg', 'http://www.nasa.gov/image-feature/expedition-48-soyuz-rollout'),
(35, '2016-07-05 17:23:00', '2016-08-23 13:11:58', 'Celebrating Juno''s Arrival at Jupiter', 'The Juno team celebrates after receiving confirmation from the spacecraft that it had successfully completed the engine burn and entered orbit of Jupiter, Monday, July 4, 2016 in mission control of the Space Flight Operations Facility at the Jet Propulsion Laboratory. The Juno mission launched August 5, 2011 and will orbit the planet for 20 months.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27997163342_4ea08a0abc_o.jpg', 'http://www.nasa.gov/image-feature/celebrating-junos-arrival-at-jupiter'),
(36, '2016-07-04 17:54:00', '2016-08-23 13:11:58', 'Juno Closes in on Jupiter', 'This is the final view taken by the JunoCam instrument on NASA''s Juno spacecraft before Juno''s instruments were powered down in preparation for orbit insertion on July 4.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20706_figb_labeled.png', 'http://www.nasa.gov/image-feature/pia20706/juno-closes-in-on-jupiter'),
(37, '2016-07-01 16:01:00', '2016-08-23 13:11:58', 'Counting Down to Juno''s Arrival at Jupiter', 'A model of the Juno spacecraft is seen at a news briefing on Thursday, June 30, 2016, at the Jet Propulsion Laboratory. The Juno mission will arrive at Jupiter July 4, 2016, to orbit the planet for 20 months and collect data on the planetary core, map the magnetic field, and measure the amount of water and ammonia in the atmosphere.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27392354164_7912311d8c_o.jpg', 'http://www.nasa.gov/image-feature/counting-down-to-junos-arrival-at-jupiter'),
(38, '2016-06-30 17:29:00', '2016-08-23 13:11:58', 'Aurora South of Australia', 'On June 24, 2016, Expedition 48 Commander Jeff Williams of NASA photographed the brilliant lights of an aurora from the International Space Station. Sharing the image on social media, Williams wrote, "We were treated to some spectacular aurora south of Australia today."', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss048e007924.jpg', 'http://www.nasa.gov/image-feature/aurora-south-of-australia'),
(39, '2016-06-29 16:48:00', '2016-08-23 13:11:58', 'Crew Dragon Pressure Vessel Put to the Test', 'Pressure vessels built by SpaceX to test its Crew Dragon designs are going through structural testing, so engineers can analyze the spacecraft’s ability to withstand the harsh conditions of launch and spaceflight. A pressure vessel is the area of the spacecraft where astronauts will sit during their ride to the International Space Station.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27263296274_db0774f7be_o.jpg', 'http://www.nasa.gov/image-feature/crew-dragon-pressure-vessel-put-to-the-test'),
(40, '2016-06-28 19:10:00', '2016-08-23 13:11:58', 'Booster Test for Space Launch System Rocket', 'The second and final qualification motor (QM-2) test for the Space Launch System’s booster is seen, Tuesday, June 28, 2016, at Orbital ATK Propulsion Systems test facilities in Promontory, Utah. During the Space Launch System flight the boosters will provide more than 75 percent of the thrust needed to escape the gravitational pull of the Earth.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27928160046_309a2b0123_o.jpg', 'http://www.nasa.gov/image-feature/booster-test-for-space-launch-system-rocket-1'),
(41, '2016-06-27 16:46:00', '2016-08-23 13:11:58', 'Juno on Jupiter''s Doorstep', 'NASA''s Juno spacecraft obtained this color view on June 21, 2016, at a distance of 6.8 million miles (10.9 million kilometers) from Jupiter. Juno will arrive at Jupiter on July 4. As Juno makes its initial approach, the giant planet''s four largest moons -- Io, Europa, Ganymede and Callisto -- are visible.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20701.jpg', 'http://www.nasa.gov/image-feature/juno-on-jupiters-doorstep'),
(42, '2016-06-24 15:43:00', '2016-08-23 13:11:58', 'A Test Version of the Booster for NASA''s New Rocket', 'A test version of the booster for NASA''s new rocket, the Space Launch System, will fire up for the second of two qualification ground tests at 10:05 a.m. EDT (8:05 a.m. MDT) Tuesday, June 28 at prime contractor Orbital ATK''s test facility in Promontory, Utah. NASA Television will air live coverage of the booster test June 28 beginning at 9:30 a.m.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/m16-055a.jpg', 'http://www.nasa.gov/exploration/systems/sls/multimedia/second-qualification-ground-booster-test-June-28'),
(43, '2016-06-23 17:32:00', '2016-08-23 13:11:58', 'Hubble Sees New Dark Spot on Neptune', 'New images obtained on May 16, 2016, by NASA''s Hubble Space Telescope confirm the presence of a dark vortex in the atmosphere of Neptune. This full visible-light image shows that the dark feature resides near and below a patch of bright clouds in the planet''s southern hemisphere.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/hs-2016-22-b-full.jpg', 'http://www.nasa.gov/image-feature/hubble-sees-new-dark-spot-on-neptune'),
(44, '2016-06-22 16:57:00', '2016-08-23 13:11:58', 'Pervasive Ice Retreat in West Antarctica', 'Along the Bellingshausen Sea coast of West Antarctica, ice has been retreating inland being lost to the sea. Scientists knew this, but they lacked a full picture of the scale. Now a team of researchers has compiled a Landsat-based data set and found that such losses have been going on for at least the past four decades.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/antarctica_oli_2015061_lrg.jpg', 'http://www.nasa.gov/image-feature/pervasive-ice-retreat-in-west-antarctica'),
(45, '2016-06-21 16:44:00', '2016-08-23 13:11:58', 'Space Station View of the Full Moon', 'Expedition 48 Commander Jeff Williams of NASA took this photograph on June 21, 2016, from the International Space Station, writing, "A spectacular rise of the full moon just before sunset while flying over western China."', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss048e004418.jpg', 'http://www.nasa.gov/image-feature/space-station-view-of-the-full-moon'),
(46, '2016-06-20 16:10:00', '2016-08-23 13:11:58', 'Expedition 47 Soyuz Landing', 'The Soyuz TMA-19M spacecraft is seen as it lands with Expedition 47 crew members Tim Kopra of NASA, Tim Peake of the European Space Agency, and Yuri Malenchenko of Roscosmos near the town of Zhezkazgan, Kazakhstan on Saturday, June 18, 2016. Kopra, Peake, and Malenchenko are returning after six months onboard the International Space Station.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27490491440_d820b1ecff_o.jpg', 'http://www.nasa.gov/image-feature/expedition-47-soyuz-landing'),
(47, '2016-06-17 17:43:00', '2016-08-23 13:11:58', 'NASA''s X-57 Electric Research Plane', 'With 14 electric motors turning propellers and all of them integrated into a uniquely-designed wing, NASA will test new propulsion technology using an experimental airplane now designated the X-57 and nicknamed “Maxwell.” This concept image illustrates NASA''s X-57 plane in flight.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/sceptor_city_nasa_half_res.jpg', 'http://www.nasa.gov/image-feature/nasas-x-57-electric-research-plane'),
(48, '2016-06-16 16:17:00', '2016-08-23 13:11:58', 'Sunset From the International Space Station', 'Expedition 47 Flight Engineer Jeff Williams of NASA captured a series of photos for this composite image of the setting sun reflected by the ocean.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27041570914_5de6cc0400_o.jpg', 'http://www.nasa.gov/image-feature/sunset-from-the-international-space-station'),
(49, '2016-06-15 16:02:00', '2016-08-23 13:11:58', 'Cygnus Cargo Craft Released From Space Station', 'Orbital ATK''s Cygnus cargo craft is released from the International Space Station in this June 14, 2016, photograph by ESA astronaut Tim Peake. Once Cygnus reached a safe distance, ground controllers at NASA''s Glenn Research Center initiated the sequence for an experiment design to better understand how fire spreads in a microgravity environment.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27594170151_e2625a7d6b_o.jpg', 'http://www.nasa.gov/image-feature/cygnus-cargo-craft-released-from-space-station'),
(50, '2016-06-14 14:51:00', '2016-08-23 13:11:58', 'Orion Dives Deep for the Sake of Safety', 'A test version of the Orion spacecraft is pulled back like a pendulum and released, taking a dive into the 20-foot-deep (6.1 meters) Hydro Impact Basin at NASA’s Langley Research Center in Hampton, Virginia.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/lrc-2016-h1_p_orion-060712.jpeg', 'http://www.nasa.gov/image-feature/langley/orion-dives-deep-for-the-sake-of-safety'),
(51, '2016-06-13 22:55:00', '2016-08-23 13:11:58', 'NASA Honors Orlando Victims', 'The American flag flies at half staff at NASA’s Kennedy Space Center in Florida, with the iconic Vehicle Assembly Building in the background. On Sunday, June 12, President Barack Obama ordered U.S. flags flown at half staff “as a mark of respect for the victims of the act of hatred and terror” at the Pulse nightclub in Orlando.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/ksc-20160613-ph_kls0001_0016.jpeg', 'http://www.nasa.gov/image-feature/nasa-honors-orlando-victims'),
(52, '2016-06-10 15:52:00', '2016-08-23 13:11:58', 'Hubble Uncovers a Mysterious Hermit', 'The drizzle of stars scattered across this image forms a galaxy known as UGC 4879. UGC 4879 is an irregular dwarf galaxy — as the name suggests, galaxies of this type are a little smaller and messier than their cosmic cousins, lacking the majestic swirl of a spiral or the coherence of an elliptical.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/hubble_friday_06102016.jpg', 'http://www.nasa.gov/image-feature/goddard/2016/hubble-uncovers-a-mysterious-hermit'),
(53, '2016-06-09 17:01:00', '2016-08-23 13:11:58', 'Beams of Light on a Golden Lake', 'This stunning Earth image taken by the Expedition 47 crew on May 31, 2016, from the International Space Station looks from northwestern China on the bottom into eastern Kazakhstan. The large lake in Kazakhstan with golden sun glint is the crescent-shaped Lake Balkhash, the second largest lake in Central Asia.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27250243350_5563fbc72b_o.jpg', 'http://www.nasa.gov/image-feature/beams-of-light-on-a-golden-lake'),
(54, '2016-06-08 16:30:00', '2016-08-23 13:11:58', 'New Mission Studying Neutron Stars On Track for Launch', 'A view of the Neutron star Interior Composition Explorer (NICER) X-ray Timing Instrument without its protective blanketing shows a collection of 56 close-packed sunshades. NICER, an upcoming NASA astrophysics mission, will uncover the physics governing the ultra-dense interiors of neutron stars.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/image_2_nicer.jpg', 'http://www.nasa.gov/image-feature/new-mission-studying-neutron-stars-on-track-for-launch'),
(55, '2016-06-07 17:48:00', '2016-08-23 13:11:58', 'Frosted Dunes on Mars', 'Sand dunes cover much of this terrain, which has large boulders lying on flat areas between the dunes. It is late winter in the southern hemisphere of Mars, and these dunes are just getting enough sunlight to start defrosting their seasonal cover of carbon dioxide. Spots form where pressurized carbon dioxide gas escapes to the surface.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27002215442_179da57f4b_o.jpg', 'http://www.nasa.gov/image-feature/frosted-dunes-on-mars'),
(56, '2016-06-06 16:48:00', '2016-08-23 13:11:58', 'Space Station View of Noctilucent Clouds', 'Expedition 47 Flight Engineer Tim Peake of the European Space Agency photographed rare, high-altitude noctilucent or "night shining" clouds from the International Space Station on May 29, 2016. Noctilucent clouds form between 76 to 85 kilometers (47 to 53 miles) above the Earth’s surface, near the boundary of the mesosphere and thermosphere.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/27420333805_6fd1876a46_o.jpg', 'http://www.nasa.gov/image-feature/space-station-view-of-noctilucent-clouds'),
(57, '2016-06-03 14:15:00', '2016-08-23 13:11:58', 'Hubble Rocks with a Heavy-Metal Home', 'This 10.5-billion-year-old globular cluster, NGC 6496, is home to heavy-metal stars of a celestial kind! The stars comprising this spectacular spherical cluster are enriched with much higher proportions of metals — elements heavier than hydrogen and helium are curiously known as metals in astronomy — than stars found in similar clusters.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/hubble_friday_06032016.jpg', 'http://www.nasa.gov/image-feature/goddard/2016/hubble-rocks-with-a-heavy-metal-home'),
(58, '2016-06-02 17:29:00', '2016-08-23 13:11:58', 'The Dark Side of Pluto', 'NASA’s New Horizons spacecraft took this stunning image of Pluto only a few minutes after closest approach on July 14, 2015. The image was obtained at a high phase angle –that is, with the sun on the other side of Pluto, as viewed by New Horizons. Seen here, sunlight filters through and illuminates Pluto’s complex atmospheric haze layers.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/darksideimage_unann.png', 'http://www.nasa.gov/image-feature/the-dark-side-of-pluto'),
(59, '2016-06-01 16:07:00', '2016-08-23 13:11:58', 'The Little Fox and the Giant Stars', 'New stars are the lifeblood of our galaxy, and there is enough material revealed by this Herschel infrared image to build stars for millions of years to come.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia13500.jpg', 'http://www.nasa.gov/image-feature/jpl/pia13500/the-little-fox-and-the-giant-stars'),
(60, '2016-05-31 17:47:00', '2016-08-23 13:11:58', 'Great Barrier Reef Near Whitsunday Islands', 'An astronaut aboard the International Space Station used a powerful lens to photograph these three reefs in Australia’s Great Barrier Reef on Oct. 12, 2015. Reefs are easy to spot from space because the iridescent blues of shallow lagoons contrast sharply with the dark blues of deep water.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss045e056257_lrg.jpg', 'http://www.nasa.gov/image-feature/great-barrier-reef-near-whitsunday-islands');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(11) COLLATE utf32_unicode_ci NOT NULL,
  `password` text COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'anonim', '42');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
