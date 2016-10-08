return {
	id = "ZK_sunrise",
	name = "Sunrise",
	author = "KingRaptor",
	length = "Long",
	difficulty = "Medium",
	version = "0.2",
	order = 1,
	mod = "rapid://zk:stable",
	--vnDir = "vn",
	description = [[The official campaign for Zero-K.
	
	Even after the collapse of the galaxy, the flames of war still blaze. Old causes, old plots linger. Now the Imperial auxiliary Ada Caedmon, flung into the future in the aftermath of her final battle, sets out to reclaim her past.]],
	mapImage = "vn/sunrise/images/galaxy4.jpg",
	startFunction = function()
		WG.CampaignHandler.SetVNStory("sunrise")
		WG.CampaignHandler.SetNextMissionScript("prologue1_intro")
		WG.CampaignHandler.SetChapterTitle("Prologue 1")
		WG.VisualNovel.StartScript("prologue1_intro")
	end
}