---@meta _
---@diagnostic disable

local sjson = rom.mods['SGG_Modding-SJSON']

-- Keepsakes
local gui_boons_vfx_path = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Boons_VFX.sjson')
sjson.hook(gui_boons_vfx_path, function(data)
	for index, animation_data in ipairs(data.Animations) do
		if animation_data.Name == "Keepsake_31" then -- Nemesis
			animation_data.FilePath = "ellomenop-EyeSafe\\nemesis_keepsake"

			-- if config.icon_to_use == Icon.CHIBI_NEM then
			-- 	animation_data.FilePath = "ellomenop-EyeSafe\\NemesisReward"
			-- else
			-- 	animation_data.FilePath = "ellomenop-EyeSafe\\evil"
			-- end
		end
		if animation_data.Name == "Keepsake_42" then -- Chaos
			animation_data.FilePath = "ellomenop-EyeSafe\\chaos_keepsake"
		end
		if animation_data.Name == "Keepsake_54" then -- Athena
			animation_data.FilePath = "ellomenop-EyeSafe\\athena_keepsake"
		end
	end
end)

-- Portraits
local gui_portraits_vfx_path = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Portraits_VFX.sjson')
sjson.hook(gui_portraits_vfx_path, function(data)
	for index, animation_data in ipairs(data.Animations) do
		if animation_data.Name == "Portrait_Scylla_Default_01" then
			animation_data.FilePath = "ellomenop-EyeSafe\\scylla_portrait"
		end
	end
end)