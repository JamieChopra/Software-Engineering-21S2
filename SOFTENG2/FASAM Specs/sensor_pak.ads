with TEXT_IO, DATA_POOL, DISPLAY_PAK, CALENDAR;
use TEXT_IO, DATA_POOL, DISPLAY_PAK, CALENDAR;

--
-- ** FIRE MONITORING SYSTEM **
--
-- Task SENSORS is prompted by TIMER every 30 seconds to read values from a data
-- file. The data represents simulated readings of alarm/non-alarm conditions
-- The readings are checked to determine whether an alarm condition has arisen.
-- The alarm state is set accordingly and DATA_POOL is updated.
-- The results are also sent to DISPLAY to update the CONTROLLERS interface.
--
-- Type: 			SPECIFICATION
-- File:			SENSOR_PAK.ADS
-- Version:                     1.1
-- Version Author:              Mike Everett
-- Date:                        27/12/2019
--

package SENSOR_PAK is

	task SENSOR is

		entry READ_SENSOR;
		entry READ_SENSOR_RESET;
		entry CONFIRMED_FIRE(confirmed:in boolean);
		entry TERMINATING;

	end SENSOR;

end SENSOR_PAK;

