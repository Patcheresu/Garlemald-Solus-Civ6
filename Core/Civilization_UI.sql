/*
	Authors: MC & Durkle
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT OR REPLACE INTO Types
(Type, Kind)
VALUES ('TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_RIG', 'KIND_TRAIT'),
('TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_WELL', 'KIND_TRAIT'),
('IMPROVEMENT_CERULEUM_RIG', 'KIND_IMPROVEMENT'),
('IMPROVEMENT_CERULEUM_WELL', 'KIND_IMPROVEMENT');

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO Civilizationtraits
(Traittype, Civilizationtype)
VALUES (
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_RIG',
    'CIVILIZATION_PATCHERESU_GARLEMALD'
),
(
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_WELL',
    'CIVILIZATION_PATCHERESU_GARLEMALD'
);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
(Traittype, Name, Description)
VALUES (
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_RIG',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_NAME',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_DESCRIPTION'
),
(
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_WELL',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_NAME',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_DESCRIPTION'
);

-----------------------------------------------
-- Improvements
-----------------------------------------------
INSERT OR REPLACE INTO Improvements
(
    Improvementtype,
    Name,
    Description,
    Icon,
    Enforceterrain,
    Traittype,
    Prereqtech,
    Plundertype,
    Plunderamount,
    Domain,
    Housing,
    Appeal,
    Tilesrequired
)
VALUES
(
    'IMPROVEMENT_CERULEUM_WELL',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_NAME',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_DESCRIPTION',
    'ICON_IMPROVEMENT_CERULEUM_WELL',
    1,
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_WELL',
    'TECH_MINING',
    'PLUNDER_SCIENCE',
    50,
    'DOMAIN_LAND',
    1,
    1,
    1
),
(
    'IMPROVEMENT_CERULEUM_RIG',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_RIG_NAME',
    'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_RIG_DESCRIPTION',
    'ICON_IMPROVEMENT_CERULEUM_RIG',
    1,
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_RIG',
    'TECH_SAILING',
    'PLUNDER_SCIENCE',
    50,
    'DOMAIN_SEA',
    1,
    1,
    1
);
-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
INSERT INTO Improvement_validterrains
(Improvementtype, Terraintype)
VALUES ('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_GRASS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_GRASS_HILLS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_PLAINS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_PLAINS_HILLS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_TUNDRA'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_TUNDRA_HILLS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_SNOW'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_SNOW_HILLS'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_DESERT'),
('IMPROVEMENT_CERULEUM_WELL', 'TERRAIN_DESERT_HILLS'),
('IMPROVEMENT_CERULEUM_RIG', 'TERRAIN_COAST'),
('IMPROVEMENT_CERULEUM_RIG', 'TERRAIN_OCEAN');

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------

INSERT INTO Improvement_validbuildunits
(Improvementtype, Unittype)
VALUES ('IMPROVEMENT_CERULEUM_WELL', 'UNIT_BUILDER'),
('IMPROVEMENT_CERULEUM_RIG', 'UNIT_BUILDER');

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------	

INSERT INTO Improvement_yieldchanges
(Improvementtype, Yieldtype, Yieldchange)
VALUES ('IMPROVEMENT_CERULEUM_WELL', 'YIELD_FOOD', 2),
('IMPROVEMENT_CERULEUM_WELL', 'YIELD_PRODUCTION', 2),
('IMPROVEMENT_CERULEUM_RIG', 'YIELD_FOOD', 2),
('IMPROVEMENT_CERULEUM_RIG', 'YIELD_PRODUCTION', 2);

-----------------------------------------------
-- Improvement_ValidResources
-----------------------------------------------	

INSERT INTO Improvement_validresources (
    Improvementtype, Resourcetype, Mustremovefeature
)
VALUES ('IMPROVEMENT_CERULEUM_WELL', 'RESOURCE_OIL', 0),
('IMPROVEMENT_CERULEUM_RIG', 'RESOURCE_OIL', 0);

-----------------------------------------------
-- Boosts
-----------------------------------------------	

INSERT INTO Boosts
(
    Technologytype,
    Boost,
    Triggerdescription,
    Triggerlongdescription,
    Boostclass,
    Improvementtype,
    Resourcetype
)
VALUES (
    'TECH_PLASTICS',
    40,
    'LOC_BOOST_TRIGGER_PLASTICS',
    'LOC_BOOST_TRIGGER_LONDESC_PLASTICS',
    'BOOST_TRIGGER_IMPROVE_SPECIFIC_RESOURCE',
    'IMPROVEMENT_CERULEUM_WELL',
    'RESOURCE_OIL'
);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------	

INSERT INTO Improvement_bonusyieldchanges
(Id, Improvementtype, Yieldtype, Bonusyieldchange, Prereqtech)
VALUES (
    'PATCHERESU_GARLEMALD_WELL_YIELDCHANGE',
    'IMPROVEMENT_CERULEUM_WELL',
    'YIELD_PRODUCTION',
    1,
    'TECH_PREDICTIVE_SYSTEMS'
),
(
    'PATCHERESU_GARLEMALD_RIG_YIELDCHANGE',
    'IMPROVEMENT_CERULEUM_RIG',
    'YIELD_PRODUCTION',
    1,
    'TECH_PREDICTIVE_SYSTEMS'
);

-----------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
INSERT INTO Improvement_adjacencies
(Improvementtype, Yieldchangeid)
VALUES (
    'IMPROVEMENT_CERULEUM_WELL',
    'Patcheresu_CeruleumWell_MagitekAcademyAdjacency'
),
('IMPROVEMENT_CERULEUM_RIG', 'Patcheresu_CeruleumRig_MagitekAcademyAdjacency'),
('IMPROVEMENT_CERULEUM_WELL', 'Patcheresu_CeruleumWell_CampusAdjacency'),
('IMPROVEMENT_CERULEUM_RIG', 'Patcheresu_CeruleumRig_CampusAdjacency');

INSERT INTO Adjacency_yieldchanges
(Id, Description, Yieldtype, Yieldchange, Tilesrequired, Adjacentdistrict)
VALUES (
    'Patcheresu_CeruleumWell_MagitekAcademyAdjacency',
    'Placeholder',
    'YIELD_SCIENCE',
    1,
    1,
    'DISTRICT_MAGITEK_ACADEMY'
),
(
    'Patcheresu_CeruleumRig_MagitekAcademyAdjacency',
    'Placeholder',
    'YIELD_SCIENCE',
    1,
    1,
    'DISTRICT_MAGITEK_ACADEMY'
),
(
    'Patcheresu_CeruleumWell_CampusAdjacency',
    'Placeholder',
    'YIELD_SCIENCE',
    1,
    1,
    'DISTRICT_CAMPUS'
),
(
    'Patcheresu_CeruleumRig_CampusAdjacency',
    'Placeholder',
    'YIELD_SCIENCE',
    1,
    1,
    'DISTRICT_CAMPUS'
);

-----------------------------------------------
-- Improvement_Tourism
-----------------------------------------------	

-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO Traitmodifiers
(Traittype, Modifierid)
VALUES (
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_WELL',
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER'
);
VALUES (
    'TRAIT_CIVILIZATION_IMPROVEMENT_GARLEMALD_CERULEUM_RIG',
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER'
);

-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
(Modifierid, Modifiertype, Subjectrequirementsetid)
VALUES (
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER',
    'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',
    'GARLEMALD_CITY_HAS_CERULEUM_WELL'
),
(
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER',
    'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',
    'GARLEMALD_CITY_HAS_CERULEUM_RIG'
),
(
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER_POINT',
    'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',
    null
),
(
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER_POINT',
    'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',
    null
);

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO Modifierarguments
(Modifierid, Name, Value)
VALUES (
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER',
    'ModifierId',
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER_POINT'
),
(
    'GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER_POINT',
    'GreatPersonClassType',
    'GREAT_PERSON_CLASS_ENGINEER'
),
('GARLEMALD_CERULEUM_WELL_GREAT_ENGINEER_POINT', 'Amount', 1),
(
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER',
    'ModifierId',
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER_POINT'
),
(
    'GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER_POINT',
    'GreatPersonClassType',
    'GREAT_PERSON_CLASS_ENGINEER'
),
('GARLEMALD_CERULEUM_RIG_GREAT_ENGINEER_POINT', 'Amount', 1);

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO Requirementsets
(Requirementsetid, Requirementsettype)
VALUES ('GARLEMALD_CITY_HAS_CERULEUM_WELL', 'REQUIREMENTSET_TEST_ALL'),
('GARLEMALD_CITY_HAS_CERULEUM_RIG', 'REQUIREMENTSET_TEST_ALL'),
('PLOT_HAS_GARLEMALD_CERULEUM_WELL', 'REQUIREMENTSET_TEST_ALL'),
('PLOT_HAS_GARLEMALD_CERULEUM_RIG', 'REQUIREMENTSET_TEST_ALL');

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO Requirementsetrequirements
(Requirementsetid, Requirementid)
VALUES (
    'GARLEMALD_CITY_HAS_CERULEUM_WELL',
    'GARLEMALD_CITY_CERULEUM_WELL_REQUIREMENT'
),
('GARLEMALD_CITY_HAS_CERULEUM_RIG', 'GARLEMALD_CITY_CERULEUM_RIG_REQUIREMENT'),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_WELL',
    'PLOT_HAS_GARLEMALD_CERULEUM_WELL_REQUIREMENT'
),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_RIG',
    'PLOT_HAS_GARLEMALD_CERULEUM_RIG_REQUIREMENT'
);

-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
(Requirementid, Requirementtype)
VALUES (
    'GARLEMALD_CITY_CERULEUM_WELL_REQUIREMENT',
    'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
),
(
    'GARLEMALD_CITY_CERULEUM_RIG_REQUIREMENT',
    'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_WELL_REQUIREMENT',
    'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'
),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_RIG_REQUIREMENT',
    'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'
);

-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO Requirementarguments
(Requirementid, Name, Value)
VALUES (
    'GARLEMALD_CITY_CERULEUM_WELL_REQUIREMENT',
    'CollectionType',
    'COLLECTION_CITY_PLOT_YIELDS'
),
('GARLEMALD_CITY_CERULEUM_WELL_REQUIREMENT', 'Count', 1),
(
    'GARLEMALD_CITY_CERULEUM_WELL_REQUIREMENT',
    'RequirementSetId',
    'PLOT_HAS_GARLEMALD_CERULEUM_WELL'
),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_WELL_REQUIREMENT',
    'ImprovementType',
    'IMPROVEMENT_CERULEUM_WELL'
),
(
    'GARLEMALD_CITY_CERULEUM_RIG_REQUIREMENT',
    'CollectionType',
    'COLLECTION_CITY_PLOT_YIELDS'
),
('GARLEMALD_CITY_CERULEUM_RIG_REQUIREMENT', 'Count', 1),
(
    'GARLEMALD_CITY_CERULEUM_RIG_REQUIREMENT',
    'RequirementSetId',
    'PLOT_HAS_GARLEMALD_CERULEUM_RIG'
),
(
    'PLOT_HAS_GARLEMALD_CERULEUM_RIG_REQUIREMENT',
    'ImprovementType',
    'IMPROVEMENT_CERULEUM_RIG'
);
