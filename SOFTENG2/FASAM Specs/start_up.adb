with TEXT_IO, DATA_POOL, DISPLAY_PAK, TIMER_PAK, CONTROLLER_PAK;
use TEXT_IO, DATA_POOL, DISPLAY_PAK, TIMER_PAK, CONTROLLER_PAK;

--
-- ** FIRE MONITORING SYSTEM **
--
-- START_UP procedure calls DATA_POOL, TIMER, DISPLAY and CONTROLLER to activate them
--
-- Type: 			BODY
-- File:			START_UP.ADB
-- Version:                     1.0
-- Version Author:              Mike Everett
-- Date:                        21/12/2019
--

procedure START_UP is

begin

	-- Call each of the following tasks to activate them.

	-- The LOG and SENSOR provide services for the others (i.e. those below)
	-- and are initialised on execution instead of from here.

	ACCESS_DATA_POOL.INITIALIZE_POOL;
	TIMER.START_TIMER;
	DISPLAY.START_DISPLAY;
	CONTROLLER.START_CONTROLLER;

end START_UP;
