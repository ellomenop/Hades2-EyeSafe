---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- this file will be reloaded if it changes during gameplay,
-- so only assign to values or define things here.

for _, music_data in ipairs(game.MusicTrackData.G) do
	if music_data.Name == "/Music/IrisMusicScylla2_MC" then
		-- This isn't the most other-mod-friendly way of doing this, but its specific enough that I didn't mind for now
		music_data.GameStateRequirements =  {
			{
				PathTrue = { "GameState", "RoomsEntered", "G_PostBoss01" },
			},
			{
				Path = { "GameState", "TextLinesRecord" },
				HasAll = {"DisabledForEllomenopEyeSafeMod"},
			}
		}
	end
end