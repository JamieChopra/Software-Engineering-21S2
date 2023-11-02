with TEXT_IO;
use TEXT_IO;

--
-- ** FIRE MONITORING SYSTEM **
--
-- The job of this package is to look after the system data.
-- The data requires updating at intervals as well as being accessed
-- by various tasks.
--
-- Type: 			SPECIFICATION
-- File:			DATA_POOL.ADS
-- Version:                     1.1
-- Version Author:              Mike Everett
-- Date:                        27/12/2019
--

package DATA_POOL is

	--  The following block of declarations are global types available to the whole system

	type SENSOR_DEVICE is record 				-- information held about a single sensor.
		description: string(1 .. 24);
		upper_bound: positive;
		Present_value: integer;
	end record;

	subtype ZONE_NUMBER_UPPER is character range 'A'..'C';		-- Zone letters (uppercase)
	subtype ZONE_NUMBER_LOWER is character range 'a'..'c';		-- Zone letters (lowercase)

	no_of_points: integer := 36;  						-- Number of points being monitored

	type SENSORS  is array(1..no_of_points) of SENSOR_DEVICE;			-- sensor data
	type READINGS is  array(1..no_of_points) of integer;				-- sensor readings
	type ALARM_OR_NOT is array(1 .. no_of_points) of boolean;			-- alarm values
	type DESCRIPTIONS is array (1 .. no_of_points) of string(1 .. 24);	-- sensor descriptions

	mon_points: SENSORS; 						-- monitored sensors
	descriptions_for_display: DESCRIPTIONS;		-- descriptions for sensors
	mon_sim : file_type;						-- monitored points file

	task ACCESS_DATA_POOL is

			entry INITIALIZE_POOL;
			entry CALL_FOR_DESCRIPTIONS(Descriptions_for_display: out DESCRIPTIONS);
										entry CURRENT_STATE(mon_points: out SENSORS);
			entry UPDATE_DATA(new_values: in READINGS);
			entry TERMINATING;

	end ACCESS_DATA_POOL;

end DATA_POOL;





