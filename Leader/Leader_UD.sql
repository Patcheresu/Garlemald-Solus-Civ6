/*
	Leader Unique District
	Authors: Patcheresu
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
(Type, Kind)
VALUES ('TRAIT_PATCHERESU_SOLUS_DISTRICT_MAGITEK_ACADEMY', 'KIND_TRAIT'),
('DISTRICT_MAGITEK_ACADEMY', 'KIND_DISTRICT');

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
(Traittype, Name, Description)
VALUES (
    'TRAIT_PATCHERESU_SOLUS_DISTRICT_MAGITEK_ACADEMY',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_NAME',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_DESCRIPTION'
);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO Leadertraits
(Leadertype, Traittype)
VALUES (
    'LEADER_PATCHERESU_SOLUS', 'TRAIT_PATCHERESU_SOLUS_DISTRICT_MAGITEK_ACADEMY'
);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts
(
    Districttype,
    Name,
    Description,
    Prereqtech,
    Plundertype,
    Plunderamount,
    Advisortype,
    Cost,
    Costprogressionmodel,
    Costprogressionparam1,
    Maintenance,
    Requiresplacement,
    Requirespopulation,
    Aqueduct,
    Noadjacentcity,
    Internalonly,
    Zoc,
    Captureremovesbuildings,
    Captureremovescitydefenses,
    Militarydomain,
    Citystrengthmodifier,
    Traittype
)
VALUES (
    'DISTRICT_MAGITEK_ACADEMY',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_NAME',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_DESCRIPTION',
    'TECH_WRITING',
    'PLUNDER_SCIENCE',
    50,
    'ADVISOR_TECHNOLOGY',
    120,
    'COST_PROGRESSION_NUM_UNDER_AVG_PLUS_TECH',
    40,
    2,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    'NO_DOMAIN',
    4,
    'TRAIT_PATCHERESU_SOLUS_DISTRICT_MAGITEK_ACADEMY'
);

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_greatpersonpoints (
    Districttype, Greatpersonclasstype, Pointsperturn
)
VALUES ('DISTRICT_MAGITEK_ACADEMY', 'GREAT_PERSON_CLASS_SCIENTIST', 2);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
INSERT INTO Adjacency_yieldchanges (
    Id,
    Description,
    Yieldtype,
    Yieldchange,
    Tilesrequired,
    Otherdistrictadjacent,
    Adjacentterrain,
    Adjacentfeature,
    Adjacentnaturalwonder,
    Adjacentdistrict
)
VALUES (
    'Magitek_Academy_Mountains_Science1',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE1',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    'TERRAIN_GRASS_MOUNTAIN',
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_Mountains_Science2',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE2',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    'TERRAIN_PLAINS_MOUNTAIN',
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_Mountains_Science3',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE3',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    'TERRAIN_DESERT_MOUNTAIN',
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_Mountains_Science4',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE4',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    'TERRAIN_TUNDRA_MOUNTAIN',
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_Mountains_Science5',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE5',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    'TERRAIN_SNOW_MOUNTAIN',
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_Jungle_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_JUNGLE_SCIENCE',
    'YIELD_SCIENCE',
    1,
    2,
    0,
    NULL,
    'FEATURE_JUNGLE',
    0,
    NULL
),
(
    'Magitek_Academy_District_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_DISTRICT_SCIENCE',
    'YIELD_SCIENCE',
    1,
    1,
    1,
    NULL,
    NULL,
    0,
    NULL
),
(
    'Magitek_Academy_GBR_Science',
    'LOC_FEATURE_MAGITEK_ACADEMY_BARRIER_REEF_SCIENCE',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    NULL,
    'FEATURE_BARRIER_REEF',
    0,
    NULL
),
(
    'Magitek_Academy_Government_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_GOVERNMENT_SCIENCE',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    NULL,
    NULL,
    0,
    'DISTRICT_GOVERNMENT'
),
(
    'Magitek_Academy_Geothermal_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_GEOTHERMAL_SCIENCE',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    NULL,
    'FEATURE_GEOTHERMAL_FISSURE',
    0,
    NULL
),
(
    'Magitek_Academy_Reef_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_REEF_SCIENCE',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    NULL,
    'FEATURE_REEF',
    0,
    NULL
),
(
    'Magitek_Academy_Pamukkale_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_PAMUKKALE_SCIENCE',
    'YIELD_SCIENCE',
    3,
    1,
    0,
    NULL,
    'FEATURE_PAMUKKALE',
    0,
    NULL
),
(
    'Magitek_Academy_NaturalWonder_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_NATURALWONDER_SCIENCE',
    'YIELD_SCIENCE',
    2,
    1,
    0,
    NULL,
    NULL,
    1,
    NULL
),
(
    'Magitek_Academy_Forest_Science',
    'LOC_DISTRICT_MAGITEK_ACADEMY_FOREST_SCIENCE',
    'YIELD_SCIENCE',
    1,
    2,
    0,
    NULL,
    'FEATURE_FOREST',
    0,
    NULL
);

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_adjacencies (Districttype, Yieldchangeid)
VALUES
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Mountains_Science1'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Mountains_Science2'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Mountains_Science3'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Mountains_Science4'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Mountains_Science5'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Jungle_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_District_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_GBR_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Government_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Geothermal_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Reef_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Pamukkale_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_NaturalWonder_Science'),
('DISTRICT_MAGITEK_ACADEMY', 'Magitek_Academy_Forest_Science');

-----------------------------------------------
-- District_TradeRouteYields 
-----------------------------------------------
INSERT INTO District_traderouteyields (
    Districttype,
    Yieldtype,
    Yieldchangeasorigin,
    Yieldchangeasdomesticdestination,
    Yieldchangeasinternationaldestination
)
VALUES ('DISTRICT_MAGITEK_ACADEMY', 'YIELD_FOOD', 0, 2, 0),
('DISTRICT_MAGITEK_ACADEMY', 'YIELD_SCIENCE', 0, 0, 2);

-----------------------------------------------
-- District_CitizenYieldChanges 
-----------------------------------------------
INSERT INTO District_citizenyieldchanges (Districttype, Yieldtype, Yieldchange)
VALUES ('DISTRICT_MAGITEK_ACADEMY', 'YIELD_SCIENCE', 4);

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO Districtreplaces
(Civuniquedistricttype, Replacesdistricttype)
VALUES ('DISTRICT_MAGITEK_ACADEMY', 'DISTRICT_CAMPUS');
-----------------------------------------------
-- Modifiers

-- In this section, we apply the Ability we defined earlier via the use of another Modifier. In this case, our ModifierId is defined and it is defined with the ModifierType that allows us to grant an ability. We set it as Permanent, as we want this application of the Ability to happen once (at the very start of the game when our custom leader is in-play).
-----------------------------------------------

INSERT INTO Modifiers
(Modifierid, Modifiertype, Subjectrequirementsetid)
VALUES (
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    'MODIFIER_BUILDING_YIELD_CHANGE',
    'REQSET_PATCHERESU_PLAYER_HAS_ASTROLOGY'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    'MODIFIER_BUILDING_YIELD_CHANGE',
    'REQSET_PATCHERESU_PLAYER_HAS_THEOLOGY'
);



-----------------------------------------------
-- TraitModifiers

-- This section applies the Modifier (defined directly above), that grants our custom civilization's units an ability. It's tied to the TraitType, which in turn belongs to our custom LeaderType.

-- Without this, there's no mechanism for us to apply the UnitAbilityType to anything - so this is required to get the ability to the units we specified earlier.
-----------------------------------------------

/*INSERT INTO Districtmodifiers
(Districttype, Modifierid)

INSERT INTO Buildingmodifiers
(Buildingtype, Modifierid)
*/

INSERT INTO Districtmodifiers
(Districttype, Modifierid)
VALUES
(
    'DISTRICT_MAGITEK_ACADEMY',
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE'
),
(
    'DISTRICT_MAGITEK_ACADEMY',
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE'
);

-----------------------------------------------
-- ModifierArguments

-- This final section stitches the last pieces together. It instructs the game which AbilityType to grant as part of the TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING Modifier.

-- In our case, this is the new ability we defined earlier.

-- So, as a brief recap:

-- The LeaderType receives a TraitType
-- The TraitType has a Modifier attached to it, which does 'something'
-- That 'something' is the granting of our custom unit ability
-- The unit ability is restricted only to the custom unit class we created - which contains only Builders and Settlers
-- The applied unit ability has a (different) Modifier attached to it, which changes the way those units (individually) behave
-----------------------------------------------

INSERT INTO Modifierarguments
(Modifierid, Name, Value)
VALUES (
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    'YieldType',
    'YIELD_SCIENCE'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    'YieldType',
    'YIELD_SCIENCE'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    'BuildingType',
    'BUILDING_LIBRARY'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    'BuildingType',
    'BUILDING_UNIVERSITY'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    'Amount',
    2
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    'Amount',
    4
);

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO Requirementsets
(Requirementsetid, Requirementsettype)
VALUES (
    'REQSET_PATCHERESU_DISTRICT_IS_MAGITEK_ACADEMY', 'REQUIREMENTSET_TEST_ALL'
),
(
    'REQSET_PATCHERESU_BUILDING_INSIDE_MAGITEK_ACADEMY',
    'REQUIREMENTSET_TEST_ALL'
),
(
    'REQSET_PATCHERESU_PLAYER_HAS_ASTROLOGY', 'REQUIREMENTSET_TEST_ALL'
),
(
    'REQSET_PATCHERESU_PLAYER_HAS_THEOLOGY', 'REQUIREMENTSET_TEST_ALL'
);

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO Requirementsetrequirements
(Requirementsetid, Requirementid)
VALUES (
    'REQSET_PATCHERESU_DISTRICT_IS_MAGITEK_ACADEMY',
    'REQ_PATCHERESU_REQUIRES_DISTRICT_IS_MAGITEK_ACADEMY'
),
(
    'REQSET_PATCHERESU_BUILDING_INSIDE_MAGITEK_ACADEMY',
    'REQ_PATCHERESU_REQUIRES_BUILDING_INSIDE_MAGITEK_ACADEMY'
),
(
    'REQSET_PATCHERESU_PLAYER_HAS_ASTROLOGY',
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_ASTROLOGY'
),
(
    'REQSET_PATCHERESU_PLAYER_HAS_THEOLOGY',
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_THEOLOGY'
);
-------------------------------------
-- Requirements
-------------------------------------

INSERT INTO Requirements
(Requirementid, Requirementtype)
VALUES (
    'REQ_PATCHERESU_REQUIRES_DISTRICT_IS_MAGITEK_ACADEMY',
    'REQUIREMENT_DISTRICT_TYPE_MATCHES'
),
(
    'REQ_PATCHERESU_REQUIRES_BUILDING_INSIDE_MAGITEK_ACADEMY',
    'REQUIREMENT_CITY_HAS_DISTRICT'
),
(
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_ASTROLOGY',
    'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
),
(
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_THEOLOGY',
    'REQUIREMENT_PLAYER_HAS_CIVIC'
);

-------------------------------------
-- RequirementArguments
-------------------------------------

INSERT INTO Requirementarguments
(Requirementid, Name, Value)
VALUES (
    'REQ_PATCHERESU_REQUIRES_DISTRICT_IS_MAGITEK_ACADEMY',
    'DistrictType',
    'DISTRICT_MAGITEK_ACADEMY'
),
(
    'REQ_PATCHERESU_REQUIRES_BUILDING_INSIDE_MAGITEK_ACADEMY',
    'DistrictType',
    'DISTRICT_MAGITEK_ACADEMY'
),
(
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_ASTROLOGY',
    'TechnologyType',
    'TECH_ASTROLOGY'
),
(
    'REQ_PATCHERESU_REQUIRES_PLAYER_HAS_THEOLOGY',
    'CivicType',
    'CIVIC_THEOLOGY'
);


-----------------------------------------------
-- ModifierStrings
INSERT INTO Modifierstrings
(Modifierid, Context, Text)
VALUES (
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    'Summary',
    'LOC_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE'
),
(
    'MODIFIER_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    'Summary',
    'LOC_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE'
);
-----------------------------------------------
