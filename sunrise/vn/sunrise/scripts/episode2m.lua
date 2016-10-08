local scripts = {
	episode2m_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode2m_intro") end},
		{"AddBackground", {file = "images/bg/blank.png"}},
		{"Wait", 2},
		
		-- title text splash
		{"SetVars", {episode = "Episode 2M", episodeName = "The First Law", episodeID = "episode2m_episodeID", episodeNameID = "episode2m_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
		
		{"PlaySound", "sfx/misc/teleport2.wav"},
		--{"AddImage", {id = "fadeOverlay", file = "images/bg/blank.png", width = 1920, height = 1280, y = -240}},
		{"AddImage", {id = "planet", file = "images/planets/terran03_damaged.png", width = 224, height = 224, x = 180, y = 120, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"AddImage", {id = "background2", file = "images/bg/space/4.jpg", width = 1280, height = 1280, x = 0, y = -256, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		--{"ModifyImage", {id = "fadeOverlay", animation = {endAlpha = 0, time = 1}}},
		{"ModifyImage", {id = "planet", animation = {endY = 260, time = 6}}},
		{"ModifyImage", {id = "background2", animation = {endY = -256 + 100, time = 6}}},
		{"Wait", 2},
		
		{"AddText", {speakerID = "ada", textID = "episode2m_intro1", text = "Not much to look at."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_intro2", text = "...There's some fighting going on under us at the surface. I cannot determine who the combatants are from this distance."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_intro3", text = "Do we try talking to them?"}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_intro4", text = "It may be worthwhile. We need to restock on AM fuel anyway, and we might be able to get some directions."}},
		{"AddText", {textID = "episode2m_intro5", text = "Alright, live mic..."}},
		{"PlaySound", "sfx/message_team.wav"},
		{"AddText", {speakerID = "ada", textID = "episode2m_intro6", text = "Parties on the surface of planet Scheren, Goth IV, this is the Shadow of Eden, Imperial dropship. Please acknolwedge this message."}},
		{"AddText", {textID = "episode2m_intro7", text = "..."}},
		{"PlaySound", "sfx/message_team.wav"},
		{"AddText", {textID = "episode2m_intro8", text = "The message repeats again and again, but no response is forthcoming."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_intro9", text = "...No surprise there. At least one of them is jamming really hard; I can pick it up all the way up here without trying. I'm surprised they can hear themselves talk."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_intro10", text = "Guess we'll have to go down there and knock on their door."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_intro11", text = "I cannot predict how they might react to that, friend Ada."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_intro12", text = "Relax, sis. Even if they do turn out to be hostile, I can take care of myself."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_intro13", text = "...As you wish. There's a plateau on one of the islands they're fighting over; it should be a reasonable safe insertion point. Prepping teleporter."}},
			
		{"PlaySound", "sfx/misc/teleport.wav"},
		{"ModifyImage", {id = "overlay", animation = {endColor = {1,1,1,1}, time = 0.2}}},
		{"Wait", 0.2},
		{"RemoveImage", "background2"},
		{"RemoveImage", "planet"},
		{"ModifyImage", {id = "overlay", animation = {endColor = {0,0,0,0}, time = 1}}},
		{"Wait", 2},
		
		{"JumpScript", "episode2m"},
	},
	
	episode2m = {
		{"AddText", {textID = "skipMission", text = "Skip this mission?", wait = false}},
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("episode2m_outro_win") end },
			{text = "No", action = function() scriptFunctions.JumpScript("episode2_mission") end },
		}},
	},
	
	episode2m_mission = {
		{"CustomAction", function() WG.CampaignHandler.LaunchMission("episode2m",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("episode2m_outro_win")
				else
					WG.VisualNovel.StartScript("episode2m_outro_lose")
				end
			end)
		end},
		{"Exit"}
	},
	
	episode2m_outro_win = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode2m_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("episode2m", nil, "Episode 3") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_machines") end},
		{"PlayMusic", "music/March (alt).ogg"},
		{"AddBackground", {file = "images/cg/episode2m_aftermath_evening.png", animation = {type="dissolve", time = 1.5}, wait = 1.5}},
		
		{"AddText", {textID = "episode2m_outro1", text = "As the last surviving Machine bot falls, silence descends upon the battlefield once more."}},
		{"AddText", {textID = "episode2m_outro2", text = "I gaze out the window at the ruins around me."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_outro2", text = "...You seem troubled, friend Ada."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_outro3", text = "Yeah."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_outro4", text = "It's, well... you and me, we got flung into the far future where everyone we once knew is dead... except him. The Promethean alone has followed us to this cursed future."}},
		{"AddText", {textID = "episode2m_outro5", text = "The Promethean. Robot philosopher. Revolutionary. The greatest enemy of all humankind for so very long."}},
		{"ModifyImage", {id = "overlay", animation = {startColor = {0,0,0,0}, endColor = {0, 0, 0, 1}, time = 1.5}}},
		{"Wait", 1.5},
		{"AddText", {textID = "episode2m_outro6", text = "I close my eyes briefly, recalling the countless battles across a thousand worlds that the Empire and other human polities had fought against his Free Machines."}},
		{"AddText", {textID = "episode2m_outro7", text = "So many things have changed while I was asleep... yet so many others had not."}},
		{"ModifyImage", {id = "overlay", animation = {endColor = {0,0,0,0}, time = 1.5}}},
		{"Wait", 1.5},
		{"AddText", {speakerID = "sophia", textID = "episode2m_outro8", text = "You wish to destroy him."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_outro9", text = "You heard him, Sophia. He won't rest till he's killed me... killed us."}},
		{"AddText", {speakerID = "ada", textID = "episode2m_outro10", text = "We were tasked to take the Promethean dead or alive, thousands of years into the future or not, and we will do it."}},
		{"AddText", {speakerID = "sophia", textID = "episode2m_outro12", text = "...Very well, Ada. But for now, we have no chance of pursuing him, not with the Eden's damage. We can decide how best to deal with the Promethean once we''ve handled that problem."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"Wait", 1},
		{"AddText", {textID = "episode2m_outro11", text = "...So this is my motivation to keep going... to refight the war of my past...?"}},
		{"Wait", 1},
		{"StopMusic"},
		{"Exit"}
	},
	
	episode2m_outro_lose = {
		-- TODO quit
		{"Exit"}
	},
}

return scripts