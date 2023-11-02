with CALENDAR;
use CALENDAR;

--
-- ** FIRE MONITORING SYSTEM **
--
-- TIME_OF_DAY package provides date/time functions
--
-- Type: 			SPECIFICATION
-- File:			TIME_OF_DAY.ADS
-- Version:                     1.1
-- Version Author:              Mike Everett
-- Date:                        27/12/2019
--

package TIME_OF_DAY is

	type time_record is				-- Type definition for a variable to store a time
   		record
			hours: natural;
			minutes: natural;
			second: natural;
		end record;

	timehere: calendar.time;		-- Ada time variable from package calendar.

	procedure update_time(t:in calendar.time;time_now:in out time_record);

end TIME_OF_DAY;
