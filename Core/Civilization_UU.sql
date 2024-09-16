/*
	Civilization Unique Unit
	Authors: MC
*/

-----------------------------------------------
-- Types
-----------------------------------------------	

INSERT INTO Types
(Type, Kind)
VALUES ('TRAIT_CIVILIZATION_PATCHERESU_GUNSHIP', 'KIND_TRAIT'),
('UNIT_PATCHERESU_GUNSHIP', 'KIND_UNIT');

-----------------------------------------------
-- Tags
-----------------------------------------------	
-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO Typetags (Type, Tag)
SELECT
    'UNIT_PATCHERESU_GUNSHIP',
    Tag
FROM Typetags
WHERE Type = 'UNIT_BIPLANE';

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
(Traittype, Name, Description)
VALUES (
    'TRAIT_CIVILIZATION_PATCHERESU_GUNSHIP',
    'LOC_UNIT_PATCHERESU_GUNSHIP_NAME',
    'LOC_UNIT_PATCHERESU_GUNSHIP_DESCRIPTION'
);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO Civilizationtraits
(Civilizationtype, Traittype)
VALUES (
    'CIVILIZATION_PATCHERESU_GARLEMALD', 'TRAIT_CIVILIZATION_PATCHERESU_GUNSHIP'
);

-----------------------------------------------
-- Units
-----------------------------------------------	

INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic,
		PrereqDistrict,
		CanTargetAir,
		CanCapture,
		PseudoYieldType,
		IgnoreMoves
		)
SELECT	'UNIT_PATCHERESU_GUNSHIP',	-- UnitType
		'LOC_UNIT_PATCHERESU_GUNSHIP_NAME',	-- Name
		'LOC_UNIT_PATCHERESU_GUNSHIP_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_PATCHERESU_GUNSHIP', -- TraitType
		BaseMoves + 2,
		Cost + 90,
		PurchaseYield,
		AdvisorType,
		Combat + 20,
		RangedCombat + 25,
		Range + 1,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic,
		PrereqDistrict,
		CanTargetAir,
		CanCapture,
		PseudoYieldType,
		IgnoreMoves
FROM	Units
WHERE	UnitType = 'UNIT_BIPLANE';


-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------

INSERT INTO Units_xp2 (
    Unittype, Resourcecost, Resourcemaintenancetype, Resourcemaintenanceamount
)
VALUES ('UNIT_PATCHERESU_GUNSHIP', 1, 'RESOURCE_OIL', 1);

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------

INSERT INTO Unitupgrades (Unit, Upgradeunit)
SELECT
    'UNIT_PATCHERESU_GUNSHIP',
    Upgradeunit
FROM Unitupgrades
WHERE Unit = 'UNIT_FIGHTER';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------

INSERT INTO Unitaiinfos (Unittype, Aitype)
SELECT
    'UNIT_PATCHERESU_GUNSHIP',
    Aitype
FROM Unitaiinfos
WHERE Unittype = 'UNIT_BIPLANE';

-----------------------------------------------
-- UnitReplaces
-----------------------------------------------

INSERT INTO Unitreplaces
(Civuniqueunittype, Replacesunittype)
VALUES ('UNIT_PATCHERESU_GUNSHIP', 'UNIT_BIPLANE');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

-----------------------------------------------
-- Modifiers
-----------------------------------------------

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
