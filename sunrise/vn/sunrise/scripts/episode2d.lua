local scripts = {
	episode2d_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode2d_intro") end},
		{"AddBackground", {file = "images/bg/blank.png"}},
		{"Wait", 2},
		
		-- title text splash
		{"SetVars", {episode = "Episode 2D", episodeName = "Gallus Ranch", episodeID = "episode2d_episodeID", episodeNameID = "episode2d_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
		
		{"AddText", {speakerID = "ada", textID = "episode2d_intro1", text = "...You know, if they're not going to talk to us while we have a parking orbit right above their heads, they're probably not going to talk to us ever."}},
		
		{"AddImage", {id = "planet", file = "images/planets/arid01.png", width = 224, height = 224, x = 384, y = 250, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"AddImage", {id = "background2", file = "images/bg/space/13.jpg", width = 1280, height = 1280, x = 0, y = -100, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"Wait", 2},
		
		{"AddText", {textID = "episode2d_intro2", text = "You can tell how boring this dustball is by the fact that it never got its own name. For that matter, it's amazing the star got one either."}},
		

		{"AddText", {speakerID = "ada", textID = "episode2d_intro3", text = "Are they even alive down there?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro4", text = "Difficult to ascertain. I am detecting some power traces, suggesting that their equipment is still functional."}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro5", text = " That said, I cannot actually discern any activity going on down there. For all we know, the only intelligence down there is an automated maintenance routine."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro6", text = "So... can't tell if abandoned or just antisocial, eh?"}},
		{"AddImage", {id = "map", file = "images/items/chickenmap.png", x = "0.5", y = "0.4", width = 960, height = 540, anchor = {480,270}, layer = 1, animation = {startAlpha = 0, endAlpha = 1, time = 1} }},
		{"AddText", {textID = "episode2d_intro7", text = "Down there is what looks to be a small observation post. It's ringed with light defense turrets, so at the very least this is probably an investment someone thought worth securing."}},
		{"AddText", {textID = "episode2d_intro8", text = " That said, nothing's moving on the surface, and the few buildings visible on the ground are cold to the Eden's thermal sensors."}},
		{"ModifyImage", {id = "map", animation = {startAlpha = 1, endAlpha = 0, time = 1} }},
		{"Wait", 1},
		--{"ModifyImage", {id = "planet", layer = 1}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro9", text = "What do we do with them, then?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro10", text = "We could 'port down there and make one more attempt at communication. If they still fail to respond, we may safely assume no-one is actually operating the station, in which case we take it apart and recover anything useful we find."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro11", text = "We're looting the facility?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro12", text = [["Looting" is such a crass term, Ada. I prefer the term "salvage."]]}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro13", text = "Okaaay. Do we plan on walking away leisurely like nothing happened, or making off like thieves in the night?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro14", text = "If you find this course of action ethically objectionable, Ada, might I be able to assist you in finding a different line of work?"}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro15", text = "Sheesh. Fine, fine. Let's go salvage that facility. Are we ready to port?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_intro16", text = "Yes."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_intro17", text = "Well, then. Make it so."}},
		--{"PlaySound", "sfx/misc/teleport1.wav"},
		{"ModifyImage", {id = "planet", animation = {endColor = {0,0,0,1}, time = 1}}},
		{"ModifyImage", {id = "background2", animation = {endColor = {0,0,0,1}, time = 1}}},
		{"Wait", 2},
		{"AddBackground", {file = "images/bg/blank.png", animation = {startColor = {1,1,1,1}, time = 1}}},
		{"RemoveImage", "planet"},
		{"RemoveImage", "background2"},
		{"RemoveImage", "map"},
		--{"RemoveImage", "background2"},
		
		{"JumpScript", "episode2d"},
	},
	
	episode2d = {
		{"AddText", {textID = "skipMission", text = "Skip this mission?", wait = false}},
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("episode2d_outro") end },
			{text = "No", action = function() scriptFunctions.JumpScript("episode2d_mission") end },
		}},
	},
	
	episode2d_mission = {
		{"CustomAction", function() WG.CampaignHandler.LaunchMission("episode2d",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("episode2d_outro")
				else
					WG.VisualNovel.StartScript("episode2d_outro")
				end
			end)
		end},
		{"Exit"}
	},
	
	episode2d_outro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode2d_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("episode2d", nil, "Episode 3") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_dynasty") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_chickens") end},
		--{"PlayMusic", "music/March (alt).ogg"},
		
		{"AddImage", {id = "planet", file = "images/planets/arid01.png", width = 224, height = 224, x = 384, y = 250, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"AddImage", {id = "background2", file = "images/bg/space/13.jpg", width = 1280, height = 1280, x = 0, y = -100, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"Wait", 1.5},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro1", text = [[Thats the last time I go on any "salvage" missions. Just what kind of screwy operation were they running down there?]]}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_outro2", text = "It appears to have been a chicken breeding facility. The Dynasty were suspected to operate such ranches to raise specimens for their research."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro2", text = "Mad scientists, each and every one of them. I knew they were never much for sensible constraints on their biological research, but this is going too far, even for them!"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_outro3", text = "You think they should do their experiments on chickens captured from the wild instead?"}},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro4", text = "I think they shouldn't do those experiments at all!"}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_outro5", text = "Even if they come up with an effective, long-term solution to the chicken problem? Those creatures have been plaguing human space since the Planetwars, you know."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro6", text = "Well. Maybe. But I still don't trust them. In fact, I think they caused the chickens in the first place!"}},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro7", text = "...Think they're still around? Or that they wiped themselves out with one of their own creations? Now that would be poetic."}},
		{"AddText", {speakerID = "sophia", textID = "episode2d_outro8", text = "I cannot say, friend Ada, not without more information. We are not too far from what was then their space, but the base logs indicated no contact with the outside for several hundred years. It is unclear whether the base has simply been forgotten, or if there is no-one left to check on it any longer." }},
		{"AddText", {speakerID = "sophia", textID = "episode2d_outro10", text = "In any case, we should be able to investigate once the ship is repaired. For now, I do not believe there is any further purpose in our presence here."}},
		{"AddText", {speakerID = "ada", textID = "episode2d_outro12", text = "Couldn't agree more. Let's get out of here before something even more messed up happens."}},
		{"ModifyImage", {id = "planet", animation = {endColor = {0,0,0,1}, time = 1, removeTargetOnDone = true}}},
		{"ModifyImage", {id = "background2", animation = {endColor = {0,0,0,1}, time = 1, removeTargetOnDone = true}}},
		{"Wait", 1},
		{"StopMusic"},
		{"Exit"}
	},
}

return scripts