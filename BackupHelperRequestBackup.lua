--[[-------------------------------------------------------------------------
-- BackupHelper Lightroom plug-in
--
-- Copyright 2014 Joergen Ibsen
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-------------------------------------------------------------------------]]--

-- Lightroom SDK imports
local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'

-- Support for debug logging
-- Note: Comment in the first block below to enable debug logging, and the
-- second to disable it.
--[[
local LrLogger = import 'LrLogger'
local myLogger = LrLogger('BackupHelperLogger')
myLogger:enable('logfile')

local function logPrint(...)
	myLogger:trace(...)
end

local function logPrintf(format, ...)
	myLogger:tracef(format, ...)
end
--]]
---[[
local function logPrint(...)
end

local function logPrintf(format, ...)
end
--]]

logPrint('=== Loading BackupHelperRequestBackup.lua ===')

local function requestCatalogBackup()
	logPrint('[ Entering requestCatalogBackup() ]')

	LrApplication.backupAtNextShutdown(_PLUGIN.id)

	LrDialogs.message(
		LOC '$$$/BackupHelper/General/PluginName=Backup Helper',
		LOC '$$$/BackupHelper/General/BackupRequested=Catalog backup will run next time Lightroom exits.',
		'info'
	)
end

requestCatalogBackup()
