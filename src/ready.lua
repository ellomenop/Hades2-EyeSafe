---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.
-- Absolute Path links to plugins_data folder - mod folder, then package name - which MUST contain mod author name for uniqueness
local package = rom.path.combine(_PLUGIN.plugins_data_mod_folder_path, _PLUGIN.guid)
-- Example Output of Package Path:
-- C:\Program Files (x86)\Steam\steamapps\common\Hades II\Ship\ReturnOfModding\plugins_data\zannc-KeepsakePort\zannc-KeepsakePort
modutil.mod.Path.Wrap("SetupMap", function(base)
    LoadPackages({Name = package})
    base()
end)
