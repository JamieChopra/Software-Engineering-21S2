with TEXT_IO;
use TEXT_IO;

--
-- SCREEN_HANDLER provides screen display functions
--
-- Type: 			SPECIFICATION
-- File:			SCREEN_HANDLER.ADS
-- Version:                     1.1
-- Version Author:              Mike Everett
-- Date:                        27/12/2019
--

-- WARNING - Procedures Back_White, Back_Black and Flair_Clear_Screen use an illegal escape keys
--			 that will produce "Bad Escape Key" errors on execution.


package SCREEN_HANDLER is

	-- procedure definitions

    procedure fore_black;

	procedure fore_white;

	procedure back_white;							-- NOTE - procedure calls illegal escape key

	procedure back_black;							-- NOTE - procedure calls illegal escape key

	procedure set_blink;

	procedure bell;

 	procedure clr_screen;

 	procedure posn_cursor(row, col: in string);

	procedure save_cursor;

	procedure restore_cursor;

	procedure clear_to_bottom;

	procedure clear_line;

	procedure cursorup(pos: in string);

	procedure cursordown(pos: in string);

	procedure cursorleft(pos: in string);

	procedure cursorright(pos: in string);

	procedure home;

	procedure set_normal;

	procedure flair_clear_screen;					-- NOTE - procedure calls illegal escape keys


end SCREEN_HANDLER;



