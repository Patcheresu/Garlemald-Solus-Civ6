/*
	Civilization Badge Colours
	Authors: MC
*/

-----------------------------------------------
-- Colors

-- This configures four colour options for your custom civilization. All values are formatted as RGBA - with the A (Alpha) channel always set to 255.

-- In this file/section, all we are doing is defining the colours and giving them unique string 'names'. We'll assign them to our civilization (via our Leader) in a separate file (Leader_Colors.sql).
-----------------------------------------------

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_PATCHERESU_GARLEMALD_A_PRIMARY',		'234,234,234,255'   ),
		('COLOR_PATCHERESU_GARLEMALD_A_SECONDARY',		'238,31,35,255'		),
		('COLOR_PATCHERESU_GARLEMALD_B_PRIMARY',		'234,234,234,255'	),
		('COLOR_PATCHERESU_GARLEMALD_B_SECONDARY',		'66,66,66,255'		),
		('COLOR_PATCHERESU_GARLEMALD_C_PRIMARY',		'203,203,203,255'	),
		('COLOR_PATCHERESU_GARLEMALD_C_SECONDARY',		'238,31,35,255'		),
		('COLOR_PATCHERESU_GARLEMALD_D_PRIMARY',		'203,203,203,255'	),
		('COLOR_PATCHERESU_GARLEMALD_D_SECONDARY',		'66,66,66,255'	    );