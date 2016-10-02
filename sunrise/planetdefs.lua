local planetDefs = {
	{
		id = "fenghuang",
		name = "42 Fenghuang",
		pos = {0.16, 0.85},
		size = {194,194},
		sizeMap = {32, 32},
		image = "vn/sunrise/images/planets/barren01.png",
		background = "vn/sunrise/images/bg/space/20.jpg",
		missions = {"episode1"},
		type = "Asteroid",
		radius = "213 km",
		gravity = "0.0072 g",
		primary = "Yangtze",
		primaryType = "A3",
		milRating = "0.2",
		text = "This lonely asteroid was the site of one of the Promethean's greatest victories over the Empire."
			.. " The Free Machines lured three auxiliary legions (and even an Imperial Vanguard cohort) here, then surrounded and annihilated them."
			.. " Today, feral robots scavenge the corpses from Fenghuang's unweathered surface."
	},
	
	{
		id = "scheren",
		name = "Scheren",
		pos = {0.12, 0.75},
		size = {259, 259},
		sizeMap = {48, 48},
		image = "vn/sunrise/images/planets/terran03_damaged.png",
		background = "vn/sunrise/images/bg/space/4.jpg",
		missions = {"episode2m"},
		type = "Terran (damaged)",
		radius = "5700 km",
		gravity = "0.91 g",
		primary = "Goth",
		primaryType = "G4",
		milRating = "0.7",
		text = "Once a pristine garden world, most life on the surface was blotted away in three days of orbital bombardment during the Seventh Planetwars."
			.. " The native biosphere has yet to recover from the scorching of virtually every square meter of land and the years of dust-induced winter that followed."
            .. " Only recently have the survivors of the oceanic famine started tentatively evolving to fill the vacated niche of terrestrial life."
	},
	
	{
		id = "faul_ii",
		name = "Faul II",
		pos = {0.21, 0.77},
		size = {259, 259},
		sizeMap = {36, 36},
		image = "vn/sunrise/images/planets/arid01.png",
		background = "vn/sunrise/images/bg/space/13.jpg",
		missions = {"episode2d"},
		type = "Arid",
		radius = "5100 km",
		gravity = "0.85 g",
		primary = "Faul",
		primaryType = "K5",
		milRating = "0.62",
		text = "A small, arid world with little native life detected on the surface."
			.. " About the only thing of interest on this dry, dusty ball (and indeed the entire system) is the old Dynasty research station here, set up during the Planetwars for reasons"
			.. " that are not known but can be guessed at."
	},
	
	{
		id = "antikythera",
		name = "Antikythera",
		pos = {0.19, 0.66},
		size = {259, 259},
		sizeMap = {50, 50},
		image = "vn/sunrise/images/planets/tundra01.png",
		background = "vn/sunrise/images/bg/space/3.jpg",
		missions = {"episode3"},
		type = "Tundra",
		radius = "6050 km",
		gravity = "0.97 g",
		primary = "Tsiolkovsky's Star",
		primaryType = "G1",
		milRating = "1.4",
		text = "A cold Earth-sized planet on the Imperial frontier. Much of the surface is covered by snow all year round."
			.. "The base here retains its old pre-Fall function as a starship production and repair depot. So far, enough of the orbital defenses have remained intact"
			.. " to keep away the piratical raids that plague this sector, but that may change in a few hundred years."
	}
}

return planetDefs