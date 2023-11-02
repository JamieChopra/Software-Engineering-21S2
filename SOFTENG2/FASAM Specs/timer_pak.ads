with TEXT_IO, SENSOR_PAK, DATA_POOL, TIME_OF_DAY, calendar, LOG_PAK;
use TEXT_IO, SENSOR_PAK, DATA_POOL, TIME_OF_DAY, calendar, LOG_PAK;

--
-- ** FIRE MONITORING SYSTEM **
--
-- Task TIMER keeps a check on the time by reading the system time.
-- If it detects a 2 minute interval it activates LOG task and if
-- it detects a 30 second interval it activates LOG task in order
-- to read values in.
--
-- Type: 			SPECIFICATION
-- File:			TIMER_PAK.ADS
-- Version: 		1.1
-- Version Author:              Mike Everett
-- Date:                        21/12/2019
--

package TIMER_PAK is

	time_now:time_record;			-- current time, stored as hours, minutes and seconds

	task TIMER is

		entry START_TIMER;
		entry STOP_TIMER(confirmed: in boolean);
		entry RESET_TIMER(reset_flag: in boolean);
		entry TERMINATING;

	end TIMER;

end TIMER_PAK;
