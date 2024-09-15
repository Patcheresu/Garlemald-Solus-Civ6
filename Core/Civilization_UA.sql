/*
	Civilization Unique Ability
	Authors: Patcheresu
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
(Type, Kind)
VALUES ('TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS', 'KIND_TRAIT');

-----------------------------------------------
-- Tags and TypeTags
-----------------------------------------------
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
(Traittype, Name, Description)
VALUES (
    'TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS',
    'LOC_TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS_NAME',
    'LOC_TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS_DESCRIPTION'
);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO Civilizationtraits
(Civilizationtype, Traittype)
VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD',
    'TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS'
);

-----------------------------------------------
-- Exclusions

-- It's time to take things away from Garlemald
-----------------------------------------------

INSERT INTO Excludedgreatpersonclasses
(Greatpersonclasstype, Traittype)
VALUES (
    'GREAT_PERSON_CLASS_PROPHET', 'TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS'
);

INSERT INTO Excludeddistricts
(Districttype, Traittype)
VALUES ('DISTRICT_HOLY_SITE', 'TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS');

-----------------------------------------------
-----------------------------------------------
-- RequirementSets
-----------------------------------------------
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
-----------------------------------------------
-- Requirements
-----------------------------------------------
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
(Modifierid, Modifiertype, RunOnce, Permanent, SubjectRequirementSetId)
VALUES 
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_DEUS_OIL_VIS',
    'MODIFIER_PLAYER_GRANT_FREE_RESOURCE_VISIBILITY',
    0,
    1,
    NULL
);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO Traitmodifiers
(Traittype, Modifierid)
VALUES 
(
    'TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS',
    'MODIFIER_PATCHERESU_NOS_SUMUS_DEUS_OIL_VIS'
);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO Modifierarguments
(Modifierid, Name, Value)
VALUES 
('MODIFIER_PATCHERESU_NOS_SUMUS_DEUS_OIL_VIS', 'ResourceType', 'RESOURCE_OIL');

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------