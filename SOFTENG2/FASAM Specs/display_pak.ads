with TEXT_IO, DATA_POOL, SCREEN_HANDLER, TIME_OF_DAY, CALENDAR, LOG_PAK;
use TEXT_IO, DATA_POOL, SCREEN_HANDLER, TIME_OF_DAY, CALENDAR, LOG_PAK;

--
-- ** FIRE MONITORING SYSTEM **
--
-- The screen display is handled by task DISPLAY.
-- The screen will split into 2 main sections. The top half contains the
-- 5 zones with their corresponding individual sensors. The sensors will be
-- updated every 30 seconds as called by ALARM.
-- If the controller does not respond to the suspect individual alarm then the
-- system will enter a time-out period -- need to confirm in a set period.
--
-- Bottom half of screen presents all the controllers commands including
-- log and time display.
--
-- Type: 			SPECIFICATION
-- File:			DISPLAY_PAK.ADS
-- Version:                     1.1
-- Version Author:              Mike Everett
-- Date:                        27/12/2019
--

package DISPLAY_PAK is

	type SCREEN_POS is array(1..12,1..2) of string(1..2);	-- Screen coordinates data type

	time_now: time_record;				-- current time, stored as hours, minutes and seconds

	task DISPLAY is

		entry START_DISPLAY;
		entry DISPLAY_VALUES(is_it_alarm: in ALARM_OR_NOT; zone_value: in integer;
				    		 multiple_alarms: in integer; confirmed_now: in boolean);
		entry CONTROLLER_DISPLAY(command: in character);

	end DISPLAY;

end DISPLAY_PAK;

