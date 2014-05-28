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

return {
	LrSdkVersion = 5.0,
	LrSdkMinimumVersion = 4.0,

	LrPluginName = LOC '$$$/BackupHelper/General/PluginName=Backup Helper',
	LrToolkitIdentifier = 'com.ibsensoftware.lightroom.backuphelper',
	LrPluginInfoUrl = 'https://github.com/jibsen/BackupHelper',
	
	LrLibraryMenuItems = {
		{
			title = LOC '$$$/BackupHelper/General/BackupOnExit=Backup when Lightroom next exits',
			file = 'BackupHelperRequestBackup.lua',
		},
	},

	VERSION = { major=0, minor=1, revision=0, build=0, },
}
