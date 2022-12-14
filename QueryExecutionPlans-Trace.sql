/****************************************************/
/* Created by: SQL Server vNext CTP1.0 Profiler          */
/* Date: 13/08/2022  14:34:29         */
/****************************************************/


-- Create a Queue
declare @rc int
declare @TraceID int
declare @maxfilesize bigint
set @maxfilesize = 5 

-- Please replace the text InsertFileNameHere, with an appropriate
-- filename prefixed by a path, e.g., c:\MyFolder\MyTrace. The .trc extension
-- will be appended to the filename automatically. If you are writing from
-- remote server to local drive, please use UNC path and make sure server has
-- write access to your network share

exec @rc = sp_trace_create @TraceID output, 0, N'InsertFileNameHere', @maxfilesize, NULL 
if (@rc != 0) goto error

-- Client side File and Table cannot be scripted

-- Set the events
declare @on bit
set @on = 1
exec sp_trace_setevent @TraceID, 165, 1, @on
exec sp_trace_setevent @TraceID, 165, 65, @on
exec sp_trace_setevent @TraceID, 165, 2, @on
exec sp_trace_setevent @TraceID, 165, 66, @on
exec sp_trace_setevent @TraceID, 165, 18, @on
exec sp_trace_setevent @TraceID, 165, 3, @on
exec sp_trace_setevent @TraceID, 165, 12, @on
exec sp_trace_setevent @TraceID, 165, 13, @on
exec sp_trace_setevent @TraceID, 165, 21, @on
exec sp_trace_setevent @TraceID, 165, 14, @on
exec sp_trace_setevent @TraceID, 165, 22, @on
exec sp_trace_setevent @TraceID, 165, 25, @on
exec sp_trace_setevent @TraceID, 165, 28, @on
exec sp_trace_setevent @TraceID, 165, 51, @on
exec sp_trace_setevent @TraceID, 165, 52, @on
exec sp_trace_setevent @TraceID, 165, 53, @on
exec sp_trace_setevent @TraceID, 165, 55, @on
exec sp_trace_setevent @TraceID, 165, 61, @on
exec sp_trace_setevent @TraceID, 165, 63, @on
exec sp_trace_setevent @TraceID, 165, 64, @on
exec sp_trace_setevent @TraceID, 97, 2, @on
exec sp_trace_setevent @TraceID, 97, 66, @on
exec sp_trace_setevent @TraceID, 97, 10, @on
exec sp_trace_setevent @TraceID, 97, 3, @on
exec sp_trace_setevent @TraceID, 97, 11, @on
exec sp_trace_setevent @TraceID, 97, 4, @on
exec sp_trace_setevent @TraceID, 97, 5, @on
exec sp_trace_setevent @TraceID, 97, 7, @on
exec sp_trace_setevent @TraceID, 97, 8, @on
exec sp_trace_setevent @TraceID, 97, 9, @on
exec sp_trace_setevent @TraceID, 97, 12, @on
exec sp_trace_setevent @TraceID, 97, 14, @on
exec sp_trace_setevent @TraceID, 97, 22, @on
exec sp_trace_setevent @TraceID, 97, 25, @on
exec sp_trace_setevent @TraceID, 97, 26, @on
exec sp_trace_setevent @TraceID, 97, 28, @on
exec sp_trace_setevent @TraceID, 97, 29, @on
exec sp_trace_setevent @TraceID, 97, 34, @on
exec sp_trace_setevent @TraceID, 97, 35, @on
exec sp_trace_setevent @TraceID, 97, 41, @on
exec sp_trace_setevent @TraceID, 97, 49, @on
exec sp_trace_setevent @TraceID, 97, 50, @on
exec sp_trace_setevent @TraceID, 97, 51, @on
exec sp_trace_setevent @TraceID, 97, 60, @on
exec sp_trace_setevent @TraceID, 97, 64, @on
exec sp_trace_setevent @TraceID, 169, 2, @on
exec sp_trace_setevent @TraceID, 169, 66, @on
exec sp_trace_setevent @TraceID, 169, 10, @on
exec sp_trace_setevent @TraceID, 169, 3, @on
exec sp_trace_setevent @TraceID, 169, 4, @on
exec sp_trace_setevent @TraceID, 169, 5, @on
exec sp_trace_setevent @TraceID, 169, 6, @on
exec sp_trace_setevent @TraceID, 169, 7, @on
exec sp_trace_setevent @TraceID, 169, 8, @on
exec sp_trace_setevent @TraceID, 169, 9, @on
exec sp_trace_setevent @TraceID, 169, 11, @on
exec sp_trace_setevent @TraceID, 169, 12, @on
exec sp_trace_setevent @TraceID, 169, 14, @on
exec sp_trace_setevent @TraceID, 169, 22, @on
exec sp_trace_setevent @TraceID, 169, 25, @on
exec sp_trace_setevent @TraceID, 169, 26, @on
exec sp_trace_setevent @TraceID, 169, 28, @on
exec sp_trace_setevent @TraceID, 169, 29, @on
exec sp_trace_setevent @TraceID, 169, 34, @on
exec sp_trace_setevent @TraceID, 169, 35, @on
exec sp_trace_setevent @TraceID, 169, 41, @on
exec sp_trace_setevent @TraceID, 169, 49, @on
exec sp_trace_setevent @TraceID, 169, 50, @on
exec sp_trace_setevent @TraceID, 169, 51, @on
exec sp_trace_setevent @TraceID, 169, 60, @on
exec sp_trace_setevent @TraceID, 169, 64, @on
exec sp_trace_setevent @TraceID, 98, 2, @on
exec sp_trace_setevent @TraceID, 98, 66, @on
exec sp_trace_setevent @TraceID, 98, 10, @on
exec sp_trace_setevent @TraceID, 98, 3, @on
exec sp_trace_setevent @TraceID, 98, 11, @on
exec sp_trace_setevent @TraceID, 98, 4, @on
exec sp_trace_setevent @TraceID, 98, 5, @on
exec sp_trace_setevent @TraceID, 98, 7, @on
exec sp_trace_setevent @TraceID, 98, 8, @on
exec sp_trace_setevent @TraceID, 98, 9, @on
exec sp_trace_setevent @TraceID, 98, 12, @on
exec sp_trace_setevent @TraceID, 98, 14, @on
exec sp_trace_setevent @TraceID, 98, 22, @on
exec sp_trace_setevent @TraceID, 98, 25, @on
exec sp_trace_setevent @TraceID, 98, 26, @on
exec sp_trace_setevent @TraceID, 98, 28, @on
exec sp_trace_setevent @TraceID, 98, 29, @on
exec sp_trace_setevent @TraceID, 98, 34, @on
exec sp_trace_setevent @TraceID, 98, 35, @on
exec sp_trace_setevent @TraceID, 98, 41, @on
exec sp_trace_setevent @TraceID, 98, 49, @on
exec sp_trace_setevent @TraceID, 98, 50, @on
exec sp_trace_setevent @TraceID, 98, 51, @on
exec sp_trace_setevent @TraceID, 98, 60, @on
exec sp_trace_setevent @TraceID, 98, 64, @on
exec sp_trace_setevent @TraceID, 96, 2, @on
exec sp_trace_setevent @TraceID, 96, 66, @on
exec sp_trace_setevent @TraceID, 96, 10, @on
exec sp_trace_setevent @TraceID, 96, 3, @on
exec sp_trace_setevent @TraceID, 96, 11, @on
exec sp_trace_setevent @TraceID, 96, 4, @on
exec sp_trace_setevent @TraceID, 96, 5, @on
exec sp_trace_setevent @TraceID, 96, 7, @on
exec sp_trace_setevent @TraceID, 96, 8, @on
exec sp_trace_setevent @TraceID, 96, 9, @on
exec sp_trace_setevent @TraceID, 96, 12, @on
exec sp_trace_setevent @TraceID, 96, 14, @on
exec sp_trace_setevent @TraceID, 96, 22, @on
exec sp_trace_setevent @TraceID, 96, 25, @on
exec sp_trace_setevent @TraceID, 96, 26, @on
exec sp_trace_setevent @TraceID, 96, 28, @on
exec sp_trace_setevent @TraceID, 96, 29, @on
exec sp_trace_setevent @TraceID, 96, 34, @on
exec sp_trace_setevent @TraceID, 96, 35, @on
exec sp_trace_setevent @TraceID, 96, 41, @on
exec sp_trace_setevent @TraceID, 96, 49, @on
exec sp_trace_setevent @TraceID, 96, 50, @on
exec sp_trace_setevent @TraceID, 96, 51, @on
exec sp_trace_setevent @TraceID, 96, 60, @on
exec sp_trace_setevent @TraceID, 96, 64, @on
exec sp_trace_setevent @TraceID, 68, 1, @on
exec sp_trace_setevent @TraceID, 68, 9, @on
exec sp_trace_setevent @TraceID, 68, 2, @on
exec sp_trace_setevent @TraceID, 68, 66, @on
exec sp_trace_setevent @TraceID, 68, 3, @on
exec sp_trace_setevent @TraceID, 68, 4, @on
exec sp_trace_setevent @TraceID, 68, 5, @on
exec sp_trace_setevent @TraceID, 68, 6, @on
exec sp_trace_setevent @TraceID, 68, 7, @on
exec sp_trace_setevent @TraceID, 68, 8, @on
exec sp_trace_setevent @TraceID, 68, 10, @on
exec sp_trace_setevent @TraceID, 68, 11, @on
exec sp_trace_setevent @TraceID, 68, 12, @on
exec sp_trace_setevent @TraceID, 68, 14, @on
exec sp_trace_setevent @TraceID, 68, 22, @on
exec sp_trace_setevent @TraceID, 68, 25, @on
exec sp_trace_setevent @TraceID, 68, 26, @on
exec sp_trace_setevent @TraceID, 68, 28, @on
exec sp_trace_setevent @TraceID, 68, 29, @on
exec sp_trace_setevent @TraceID, 68, 34, @on
exec sp_trace_setevent @TraceID, 68, 35, @on
exec sp_trace_setevent @TraceID, 68, 41, @on
exec sp_trace_setevent @TraceID, 68, 49, @on
exec sp_trace_setevent @TraceID, 68, 50, @on
exec sp_trace_setevent @TraceID, 68, 51, @on
exec sp_trace_setevent @TraceID, 68, 60, @on
exec sp_trace_setevent @TraceID, 68, 64, @on
exec sp_trace_setevent @TraceID, 122, 1, @on
exec sp_trace_setevent @TraceID, 122, 9, @on
exec sp_trace_setevent @TraceID, 122, 2, @on
exec sp_trace_setevent @TraceID, 122, 66, @on
exec sp_trace_setevent @TraceID, 122, 10, @on
exec sp_trace_setevent @TraceID, 122, 3, @on
exec sp_trace_setevent @TraceID, 122, 4, @on
exec sp_trace_setevent @TraceID, 122, 5, @on
exec sp_trace_setevent @TraceID, 122, 7, @on
exec sp_trace_setevent @TraceID, 122, 8, @on
exec sp_trace_setevent @TraceID, 122, 11, @on
exec sp_trace_setevent @TraceID, 122, 12, @on
exec sp_trace_setevent @TraceID, 122, 14, @on
exec sp_trace_setevent @TraceID, 122, 22, @on
exec sp_trace_setevent @TraceID, 122, 25, @on
exec sp_trace_setevent @TraceID, 122, 26, @on
exec sp_trace_setevent @TraceID, 122, 28, @on
exec sp_trace_setevent @TraceID, 122, 29, @on
exec sp_trace_setevent @TraceID, 122, 34, @on
exec sp_trace_setevent @TraceID, 122, 35, @on
exec sp_trace_setevent @TraceID, 122, 41, @on
exec sp_trace_setevent @TraceID, 122, 49, @on
exec sp_trace_setevent @TraceID, 122, 50, @on
exec sp_trace_setevent @TraceID, 122, 51, @on
exec sp_trace_setevent @TraceID, 122, 60, @on
exec sp_trace_setevent @TraceID, 122, 64, @on
exec sp_trace_setevent @TraceID, 168, 1, @on
exec sp_trace_setevent @TraceID, 168, 9, @on
exec sp_trace_setevent @TraceID, 168, 2, @on
exec sp_trace_setevent @TraceID, 168, 66, @on
exec sp_trace_setevent @TraceID, 168, 3, @on
exec sp_trace_setevent @TraceID, 168, 4, @on
exec sp_trace_setevent @TraceID, 168, 5, @on
exec sp_trace_setevent @TraceID, 168, 6, @on
exec sp_trace_setevent @TraceID, 168, 7, @on
exec sp_trace_setevent @TraceID, 168, 8, @on
exec sp_trace_setevent @TraceID, 168, 10, @on
exec sp_trace_setevent @TraceID, 168, 11, @on
exec sp_trace_setevent @TraceID, 168, 12, @on
exec sp_trace_setevent @TraceID, 168, 14, @on
exec sp_trace_setevent @TraceID, 168, 22, @on
exec sp_trace_setevent @TraceID, 168, 25, @on
exec sp_trace_setevent @TraceID, 168, 26, @on
exec sp_trace_setevent @TraceID, 168, 28, @on
exec sp_trace_setevent @TraceID, 168, 29, @on
exec sp_trace_setevent @TraceID, 168, 34, @on
exec sp_trace_setevent @TraceID, 168, 35, @on
exec sp_trace_setevent @TraceID, 168, 41, @on
exec sp_trace_setevent @TraceID, 168, 49, @on
exec sp_trace_setevent @TraceID, 168, 50, @on
exec sp_trace_setevent @TraceID, 168, 51, @on
exec sp_trace_setevent @TraceID, 168, 60, @on
exec sp_trace_setevent @TraceID, 168, 64, @on
exec sp_trace_setevent @TraceID, 146, 1, @on
exec sp_trace_setevent @TraceID, 146, 9, @on
exec sp_trace_setevent @TraceID, 146, 2, @on
exec sp_trace_setevent @TraceID, 146, 66, @on
exec sp_trace_setevent @TraceID, 146, 10, @on
exec sp_trace_setevent @TraceID, 146, 3, @on
exec sp_trace_setevent @TraceID, 146, 4, @on
exec sp_trace_setevent @TraceID, 146, 5, @on
exec sp_trace_setevent @TraceID, 146, 7, @on
exec sp_trace_setevent @TraceID, 146, 8, @on
exec sp_trace_setevent @TraceID, 146, 11, @on
exec sp_trace_setevent @TraceID, 146, 12, @on
exec sp_trace_setevent @TraceID, 146, 14, @on
exec sp_trace_setevent @TraceID, 146, 22, @on
exec sp_trace_setevent @TraceID, 146, 25, @on
exec sp_trace_setevent @TraceID, 146, 26, @on
exec sp_trace_setevent @TraceID, 146, 28, @on
exec sp_trace_setevent @TraceID, 146, 29, @on
exec sp_trace_setevent @TraceID, 146, 34, @on
exec sp_trace_setevent @TraceID, 146, 35, @on
exec sp_trace_setevent @TraceID, 146, 41, @on
exec sp_trace_setevent @TraceID, 146, 49, @on
exec sp_trace_setevent @TraceID, 146, 50, @on
exec sp_trace_setevent @TraceID, 146, 51, @on
exec sp_trace_setevent @TraceID, 146, 60, @on
exec sp_trace_setevent @TraceID, 146, 64, @on


-- Set the Filters
declare @intfilter int
declare @bigintfilter bigint

exec sp_trace_setfilter @TraceID, 10, 0, 7, N'SQL Server Profiler - 156bc8af-b7fc-49a8-ac19-193ad5047ca5'
-- Set the trace status to start
exec sp_trace_setstatus @TraceID, 1

-- display trace id for future references
select TraceID=@TraceID
goto finish

error: 
select ErrorCode=@rc

finish: 
go
