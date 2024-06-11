---@meta _
---@diagnostic disable

local sjson = rom.mods['SGG_Modding-SJSON']
local gui_animation_path = rom.path.combine(rom.paths.Content, 'Game/Animations/GUIAnimations.sjson')

sjson.hook(gui_animation_path, function(data)
	for index, animation_data in ipairs(data.Animations) do
		if animation_data.Name == "Keepsake_31" then
			animation_data.FilePath = "ellomenop-EyeSafe\\NemesisReward"
		end
	end
end)
