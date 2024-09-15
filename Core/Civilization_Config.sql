/*
	Main Civilization Configuration
	Authors: MC
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
(Type, Kind)
VALUES ('CIVILIZATION_PATCHERESU_GARLEMALD', 'KIND_CIVILIZATION');

-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO Civilizations
(
    Civilizationtype,
    Name,
    Description,
    Adjective,
    Startingcivilizationleveltype,
    Randomcitynamedepth,
    Ethnicity
)

VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD', --CivilizationType
    'LOC_CIVILIZATION_PATCHERESU_GARLEMALD_NAME', -- Name
    'LOC_CIVILIZATION_PATCHERESU_GARLEMALD_DESCRIPTION', -- Description
    'LOC_CIVILIZATION_PATCHERESU_GARLEMALD_ADJECTIVE', -- Adjective
    'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
    5, -- RandomCityNameDepth
    'ETHNICITY_EURO' -- Ethnicity
);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO Citynames
(Civilizationtype, Cityname)
VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_1'
),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_2'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_3'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_4'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_5'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_6'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_7'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_8'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_9'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_10'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_11'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_12'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_13'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_14'),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'LOC_CITY_NAME_PATCHERESU_GARLEMALD_15');

-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO Civilizationcitizennames
(Civilizationtype, Citizenname, Female)
VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_1',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_2',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_3',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_4',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_5',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_6',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_7',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_8',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_9',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_MALE_10',
    0
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_1',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_2',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_3',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_4',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_5',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_6',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_7',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_8',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_9',
    1
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CITIZEN_PATCHERESU_GARLEMALD_FEMALE_10',
    1
);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO Civilizationinfo
(Civilizationtype, Header, Caption, Sortindex)
VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CIVINFO_LOCATION',
    'LOC_CIVINFO_PATCHERESU_GARLEMALD_LOCATION',
    10
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CIVINFO_SIZE',
    'LOC_CIVINFO_PATCHERESU_GARLEMALD_SIZE',
    20
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CIVINFO_POPULATION',
    'LOC_CIVINFO_PATCHERESU_GARLEMALD_POPULATION',
    30
),
(
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'LOC_CIVINFO_CAPITAL',
    'LOC_CIVINFO_PATCHERESU_GARLEMALD_CAPITAL',
    40
);

-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO Startbiasterrains
(Civilizationtype, Terraintype, Tier)
VALUES ('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_TUNDRA', 2),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_TUNDRA_HILLS', 2),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_TUNDRA_MOUNTAIN', 2),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_SNOW', 2),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_SNOW_HILLS', 2),
('CIVILIZATION_PATCHERESU_GARLEMALD', 'TERRAIN_SNOW_MOUNTAIN', 2);

INSERT INTO Startbiasfeatures
(Civilizationtype, Featuretype, Tier)
VALUES ('CIVILIZATION_PATCHERESU_GARLEMALD', 'FEATURE_ICE', 3);

INSERT INTO Startbiasresources
(Civilizationtype, Resourcetype, Tier)
VALUES ('CIVILIZATION_PATCHERESU_GARLEMALD', 'RESOURCE_OIL', 1);

INSERT INTO Startbiasrivers
(Civilizationtype, Tier)
VALUES ('CIVILIZATION_PATCHERESU_GARLEMALD', 5);
