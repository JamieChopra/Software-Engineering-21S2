with DATA_POOL, DISPLAY_PAK, TIMER_PAK, LOG_PAK, SENSOR_PAK, TEXT_IO, TIME_OF_DAY, CALENDAR;
use DATA_POOL, DISPLAY_PAK, TIMER_PAK, LOG_PAK, SENSOR_PAK, TEXT_IO, TIME_OF_DAY, CALENDAR;

--
-- ** FIRE MONITORING SYSTEM **
--
-- The CONTROLLER task provides the user interface to the system.
-- If the guard wishes to acknowledge alarms or request particular
-- services , his key press is detected here and the appropriate
-- action taken
--
-- Type: 			SPECIFICATION
-- File:			CONTROLLER_PAK.ADS
-- Version: 		1.1
-- Version Author:              Mike Everett
-- Date:                        22/12/2019
--

package CONTROLLER_PAK is

	time_now: time_record;			-- current time, stored as hours, minutes and seconds

	task CONTROLLER is

		entry START_CONTROLLER;

	end CONTROLLER;

end CONTROLLER_PAK;
