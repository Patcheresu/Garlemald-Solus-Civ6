/*
	Civilization Icons

	Authors: MC
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------

INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename					)
VALUES	('ICON_ATLAS_PATCHERESU_GARLEMALD',					22,	 		1,				1,					'GarlemaldAtlas_22.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					30,	 		1,				1,					'GarlemaldAtlas_30.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					36,	 		1,				1,					'GarlemaldAtlas_36.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					44,	 		1,				1,					'GarlemaldAtlas_44.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					48,	 		1,				1,					'GarlemaldAtlas_48.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					50,	 		1,				1,					'GarlemaldAtlas_50.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					64,	 		1,				1,					'GarlemaldAtlas_64.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					80,	 		1,				1,					'GarlemaldAtlas_80.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					200, 		1,				1,					'GarlemaldAtlas_200.dds'			),
		('ICON_ATLAS_PATCHERESU_GARLEMALD',					256, 		1,				1,					'GarlemaldAtlas_256.dds'			),

		('ICON_ATLAS_PATCHERESU_SOLUS',				32,	 		1,				1,					'SolusIcon_32.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				45,	 		1,				1,					'SolusIcon_45.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				48,	 		1,				1,					'SolusIcon_48.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				50,	 		1,				1,					'SolusIcon_50.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				55,	 		1,				1,					'SolusIcon_55.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				64,			1,				1,					'SolusIcon_64.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				80,	 		1,				1,					'SolusIcon_80.dds'			),
		('ICON_ATLAS_PATCHERESU_SOLUS',				256,	 	1,				1,					'SolusIcon_256.dds'			),
		
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			22,			2,				1,					'WerejaguarAtlas22.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			32,			2,				1,					'WerejaguarAtlas32.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			38,			2,				1,					'WerejaguarAtlas38.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			50,			2,				1,					'WerejaguarAtlas50.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			70,			2,				1,					'WerejaguarAtlas70.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			80,			2,				1,					'WerejaguarAtlas80.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			95,			2,				1,					'WerejaguarAtlas95.dds'		),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			200,		2,				1,					'WerejaguarAtlas200.dds'	),
		('ICON_ATLAS_PATCHERESU_GUNSHIP',			256,		2,				1,					'WerejaguarAtlas256.dds'	);

-----------------------------------------------
-- IconDefinitions

-- With the IconTextureAtlases defined, we now tie each Atlas to a specific icon-type.

-- The icon Name is defined in the table below and the Atlas tells the game where to pull the graphic from. The Index field directs the game to the right portion of the file, should there be more than one icon. The Index is an integer value in the form of an array - starting from 0, with icons numbered from left-to-right, row-by-row. In this way, we use the ICON_ATLAS_PATCHERESU_GUNSHIP Atlas, which has two icons in a single file, to drive the display of two distinct in-game icons.
-----------------------------------------------

INSERT INTO IconDefinitions
		(Name,										Atlas,							'Index'				)
VALUES	('ICON_CIVILIZATION_PATCHERESU_GARLEMALD',	'ICON_ATLAS_PATCHERESU_GARLEMALD',			0					),
		('ICON_LEADER_PATCHERESU_SOLUS',					'ICON_ATLAS_PATCHERESU_SOLUS',		0					),
		('ICON_UNIT_PATCHERESU_GUNSHIP_PORTRAIT',		'ICON_ATLAS_PATCHERESU_GUNSHIP',		0					),
		('ICON_UNIT_PATCHERESU_GUNSHIP',					'ICON_ATLAS_PATCHERESU_GUNSHIP',		1					),
		('ICON_IMPROVEMENT_CERULEUM_WELL',		'ICON_ATLAS_UNIT_ACTIONS',		10					),
		('ICON_IMPROVEMENT_CERULEUM_RIG',					'ICON_ATLAS_UNIT_ACTIONS',		11					),
		('ICON_DISTRICT_MAGITEK_ACADEMY',					'ICON_ATLAS_DISTRICTS',		2					),
		('ICON_DISTRICT_MAGITEK_ACADEMY_FOW',					'ICON_ATLAS_DISTRICTS_FOW',		2					);