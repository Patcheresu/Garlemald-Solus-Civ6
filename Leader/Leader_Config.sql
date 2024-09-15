/*
	Core Leader Configuration
	Authors: MC
*/

-----------------------------------------------
-- Players (Gathering Storm)

-- The below section instructs the game to make this leader available as a selection when running the Gathering Storm ruleset.

-- This is identical to the Rise & Fall entry, directly above - though in this case, the Domain is Players:Expansion2_Players, which refers to Gathering Storm.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationType
		'LOC_CIVILIZATION_PATCHERESU_GARLEMALD_NAME', -- CivilizationName
		'ICON_CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_PATCHERESU_NOS_SUMUS_DEUS_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_PATCHERESU_SOLUS', -- LeaderType
		'LOC_LEADER_PATCHERESU_SOLUS_NAME', -- LeaderName
		'ICON_LEADER_PATCHERESU_SOLUS', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_PATCHERESU_SOLUS' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationType
		'LEADER_PATCHERESU_SOLUS', -- LeaderType
		'UNIT_PATCHERESU_GUNSHIP', -- Type
		'ICON_UNIT_PATCHERESU_GUNSHIP', -- Icon
		'LOC_UNIT_PATCHERESU_GUNSHIP_NAME', -- Name
		'LOC_UNIT_PATCHERESU_GUNSHIP_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationType
		'LEADER_PATCHERESU_SOLUS', -- LeaderType
		'IMPROVEMENT_CERULEUM_WELL', -- Type
		'ICON_IMPROVEMENT_CERULEUM_WELL', -- Icon
		'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_NAME', -- Name
		'LOC_IMPROVEMENT_GARLEMALD_CERULEUM_WELL_DESCRIPTION', -- Description
		20 -- SortIndex
		),
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_PATCHERESU_GARLEMALD', -- CivilizationType
		'LEADER_PATCHERESU_SOLUS', -- LeaderType
		'DISTRICT_MAGITEK_ACADEMY', -- Type
		'ICON_DISTRICT_MAGITEK_ACADEMY', -- Icon
		'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_NAME', -- Name
		'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_DESCRIPTION', -- Description
		30 -- SortIndex
		);