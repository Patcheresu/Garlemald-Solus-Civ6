/*
	Leader Unique Ability
	Authors: Patcheresu
*/

-----------------------------------------------
-- Types

-- This inserts the Unique Ability reference into the primary Data Types table as a recognised trait. This is mandatory, if configuring a custom trait for your leader. The string listed under 'Type' must be used throughout the mod when referring to the TraitType.

-- The standard naming convention follows: TRAIT_LEADER_PREFIX_TRAITNAME

-- Configuring a Unique Ability for your custom leader is entirely optional, but it is typically considered appropriate for balance to configure one, such that your custom leader matches those from the base games in terms of complexity, both for flavour and gameplay balance.

-- In this example, we also define a new ability, which this particular Unique Ability will leverage. You'll note this is denoted under KIND_ABILITY, which ensures the game is acknowledging this item in the right way.
-----------------------------------------------

INSERT INTO Types
(Type, Kind)
VALUES ('TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS', 'KIND_TRAIT');

-----------------------------------------------
-- Tags

-- The Unique Ability this example creates will be applied to two specific UnitType entities - the Builder and the Settler. As such, because these two - and no others - do not exist as their own class of unit, we need to ring-fence them accordingly. The below section does this for us, by inserting our new CLASS_PATCHERESU_BUILDER_SETTLER class as an ABILITY_CLASS - such that we can tie the new Ability to them.
-----------------------------------------------

-----------------------------------------------
-- TypeTags

-- The below section ties together some of the new items we defined above.

-- Firstly, it associates the UNIT_BUILDER and the UNIT_SETTLER to our new class - CLASS_PATCHERESU_BUILDER_SETTLER.

-- Secondly, we link the UnitAbilityType to that same class. By doing this, we ensure the UnitAbilityType is only applied to the two units in question - which make up all of the members of the new class.
-----------------------------------------------

-----------------------------------------------
-- UnitAbilities

-- With the UnitAbilityType defined (above), the below then inserts it into the overall UnitAbilities table. This allows it to exist in its own right, alongside other UnitAbilityType elements and ties it to the locally-referenced Name and Description text strings that name and describe the ability, respectively.

-- We also assign the Inactive boolean, here - though with 100% confidence I cannot explain why, in this case, this is the right value. An 'Inactive' ability is one that is considered 'not in use' normally; though this particular ability is always applied. As there are only two values, I personally just try to toggle these as part of troubleshooting when I am certain all other mod-parts are configured correctly.
-----------------------------------------------

-----------------------------------------------
-- UnitAbilityModifiers

-- The below entry ties the effective modifiers to the UnitAbilityType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. The possibilities are endless, so these notes make no attempt to cover what can be done - only to instruct against the logic, step by step.

-- This template will walk you through a typical example, nonetheless; though I highly recommend spending some time familiarising yourself with the base-game files and/or the database to get a general appreciation of how things work.

-- In this example, we are applying an existing Modifier that implements the described UnitAbilityType - specifically, the ALTITUDE_TRAINING_IGNORE_HILLS promotion. This will give that ability to any unit that is correctly 'awarded' the UnitAbilityType. Some of the code earlier restricts the types of units that this will be applied to - whilst code further down instructs the game to apply it.

-- Learning point: There are numerous ways to unfurl the logic that follows below. For me, the most effective way was a combination of following the base game data, trial and error and (admittedly) a healthy dose of asking for help.
-----------------------------------------------



-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO Traits
(Traittype, Name, Description)
VALUES (
    'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS',
    'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_NAME',
    'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_DESCRIPTION'
);

-----------------------------------------------
-- LeaderTraits

-- This defines the leader to which the TraitType is applied (i.e. which leader gets the Unique Ability). This is a simple matter of referencing the custom LeaderType defined in Leader_Config.sql and using the TraitType defined at the head of this document.
-----------------------------------------------

INSERT INTO Leadertraits
(Leadertype, Traittype)
VALUES ('LEADER_PATCHERESU_SOLUS', 'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS');

-----------------------------------------------
-- DynamicModifiers

-- In this section, we apply the Ability we defined earlier via the use of another Modifier. In this case, our ModifierId is defined and it is defined with the ModifierType that allows us to grant an ability. We set it as Permanent, as we want this application of the Ability to happen once (at the very start of the game when our custom leader is in-play).
-----------------------------------------------

-----------------------------------------------
-- Modifiers

-- In this section, we apply the Ability we defined earlier via the use of another Modifier. In this case, our ModifierId is defined and it is defined with the ModifierType that allows us to grant an ability. We set it as Permanent, as we want this application of the Ability to happen once (at the very start of the game when our custom leader is in-play).
-----------------------------------------------

INSERT INTO Modifiers -- Thanks JNR @jnr13!
(Modifierid, Modifiertype, RunOnce, Permanent, Subjectrequirementsetid)
VALUES (
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_STEEL', 
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',
    1,
    1,
    'REQSET_PATCHERESU_HAS_STEELREFINING_REQUIREMENTS'
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_REFINING',
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',
    1,
    1,
    'REQSET_PATCHERESU_HAS_STEELREFINING_REQUIREMENTS' 
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_COMBUSTION',
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',
    0,
    0,
    'REQSET_PATCHERESU_HAS_STEELREFINING_REQUIREMENTS' 
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_FLIGHT',
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',
    0,
    0,
    'REQSET_PATCHERESU_HAS_FLIGHT_REQUIREMENTS'
);

-----------------------------------------------
-- TraitModifiers

-- This section applies the Modifier (defined directly above), that grants our custom civilization's units an ability. It's tied to the TraitType, which in turn belongs to our custom LeaderType.

-- Without this, there's no mechanism for us to apply the UnitAbilityType to anything - so this is required to get the ability to the units we specified earlier.
-----------------------------------------------

INSERT INTO Traitmodifiers
(Traittype, Modifierid)
VALUES (
    'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS',
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_STEEL'
),
(
    'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS',
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_REFINING'
),
(
    'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS',
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_COMBUSTION'
),
(
    'TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS',
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_FLIGHT'
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
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_STEEL',
    'TechType',
    'TECH_STEEL'
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_REFINING',
    'TechType',
    'TECH_REFINING'
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_COMBUSTION',
    'TechType',
    'TECH_COMBUSTION'
),
(
    'MODIFIER_PATCHERESU_NOS_SUMUS_MANUS_GRANT_FLIGHT',
    'TechType',
    'TECH_FLIGHT'
);

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO Requirementsets
(Requirementsetid, Requirementsettype)
VALUES ('REQSET_PATCHERESU_HAS_STEELREFINING_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL'),
('REQSET_PATCHERESU_HAS_FLIGHT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL'),
('REQSET_PATCHERESU_PLAYER_HAS_FACTORY', 'REQUIREMENTSET_TEST_ALL');

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO Requirementsetrequirements
(Requirementsetid, Requirementid)
VALUES (
    'REQSET_PATCHERESU_HAS_STEELREFINING_REQUIREMENTS',
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_RIFLING'
),
(
    'REQSET_PATCHERESU_HAS_FLIGHT_REQUIREMENTS',
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_INDUSTRIALIZATION'
),
(
    'REQSET_PATCHERESU_HAS_FLIGHT_REQUIREMENTS',
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_SCIENTIFIC_THEORY'
),
(
    'REQSET_PATCHERESU_PLAYER_HAS_FACTORY',
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_A_FACTORY'
);
-------------------------------------
-- Requirements
-------------------------------------

INSERT INTO Requirements
(Requirementid, Requirementtype)
VALUES (
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_RIFLING',
    'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_INDUSTRIALIZATION',
    'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_SCIENTIFIC_THEORY',
    'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_A_FACTORY',
    'REQUIREMENT_PLAYER_HAS_BUILDING'
);

-------------------------------------
-- RequirementArguments
-------------------------------------

INSERT INTO Requirementarguments
(Requirementid, Name, Value)
VALUES (
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_RIFLING',
    'TechnologyType',
    'TECH_RIFLING'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_INDUSTRIALIZATION',
    'TechnologyType',
    'TECH_INDUSTRIALIZATION'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_SCIENTIFIC_THEORY',
    'TechnologyType',
    'TECH_SCIENTIFIC_THEORY'
),
(
    'REQ_PATCHERESU_NOS_SUMUS_MANUS_PLAYER_HAS_A_FACTORY',
    'BuildingType',
    'BUILDING_FACTORY'
);
