with TEXT_IO, DATA_POOL, TIME_OF_DAY;
use TEXT_IO, DATA_POOL, TIME_OF_DAY;

--
-- ** FIRE MONITORING SYSTEM **
--
-- LOG task sends a report on the monitored detectors to a file, and/or to a printer
-- The reports are made every 2 minutes and ae activated by the
-- TIMER task, or a request from the CONTROLLER task.
--
-- Type: 			SPECIFICATION
-- File:			LOG_PAK.ADS
-- Version: 		1.1
-- Version Author:              Mike Everett
-- Date:                        22/12/2019
--

package LOG_PAK is

	printer: file_type;							-- file for storing sensor readings

	task LOG is

		entry LOG_ACTIVATE(time_now: in time_record);
		entry TERMINATING;

	end LOG;

end LOG_PAK;
