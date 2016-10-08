local missions = {
	prologue1 = {
		name = "Blood Dawn",
		script = "prologue1_intro",
	},
	prologue2 = {
		name = "Cold Path",
		script = "prologue2_intro",
	},
	episode1 = {
		name = "Awakening",
		script = "episode1_intro",
		text = "Awaken from stasis",
	},
	episode2m = {
		name = "The First Law",
		script = "episode2m_intro",
		requiredMissions = { {"episode1"} },
		text = "Intercede in conflict",
	},
	episode2d = {
		name = "Gallus Ranch",
		script = "episode2d_intro",
		requiredMissions = { {"episode1"} },
		text = "Investigate outpost",
	},
	episode3 = {
		name = "To Reach the Sky",
		script = "episode3_intro",
		requiredMissions = { {"episode2d"}, {"episode2m"} },
		text = "Seize shipyard",
	},
}

for missionName, missionData in pairs(missions) do
	missionData.startscript = "startscripts/" .. "sunrise_" .. missionName .. ".lua"	
end

return missions