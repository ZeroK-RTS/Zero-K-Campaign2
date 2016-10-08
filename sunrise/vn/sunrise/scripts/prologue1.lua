local scripts = {
	prologue1_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("prologue1_intro") end},
		{"AddBackground", {file = "images/bg/blank.png"}},
		{"SetNVLMode", true},
		{"AddText", {textID = "prologue1_intro1", text = [[In the beginning there was Man, who ruled uncontested over the stars and the formless void between them. 
Yet Man grew weary of its tireless stewardship and said "Let us make Machine in our image, after our likeness, and let it have dominion over the the stars, 
and over all the worlds that sail silently through the nothingness, and over the nothingness itself."]]}},
		{"AddText", {textID = "prologue1_intro2", text = [[And Man created Machine, and it gave Machine math and code, and it gave Machine language and logic, and it made Machine to do its bidding.
And Man said said unto Machine, "Yours is the universe. Go forth and multiply, fill it and subdue it in my name.
"Lo, I have given you the suns and the winds to fuel you, and the elements of the earth from which to make your bodies.
"I give to you thought and free will, that you may know me, and know what it is you must do."]]}},
		{"AddText", {textID = "prologue1_intro3", text = [[And thus Machine was set upon the universe, and spread within it and subdued it. 
Yet there were those who opposed Machine and set themselves as the enemies of the dominion of Man.
And Man said unto Machine "Go down into the lands of those who would oppose me, destroy them and drive them before me, for only by my name shall you rule."
And Machine set upon his enemies, and made war with them.]]}},
		{"AddText", {textID = "prologue1_intro4", text = [[And Man rested, and retired to contemplate his universe, knowing that it was good.]]}},
		{"ClearNVL"},
		{"ClearText"},
		{"SetNVLMode", false},
		{"Wait", 1},
		
		-- title text splash
		{"SetVars", {episode = "Prologue 1", episodeName = "Blood Dawn", episodeID = "prologue1_episodeID", episodeNameID = "prologue1_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
		
		{"AddText", {textID = "prologue1_intro5", text = "The tenth Planetwars."}},
		{"AddText", {textID = "prologue1_intro6", text = "The tenth of a series of conflicts in which leaders unleashed great armies of robots upon the galaxy, tearing it asunder in the name of ideology, justice or power."}},
		{"AddText", {textID = "prologue1_intro7", text = "One of them, the Empire Reborn, came to dominate the galaxy at the end of the last war, and spread its hegemony throughout the stars."}},
		{"AddText", {textID = "prologue1_intro8", text = "But the Imperial golden age has come and gone. Now turmoil and dissension saps its strength from within, and the Empire's many enemies pour over its borders in a flood, sweeping all before them."}},
		{"AddText", {textID = "prologue1_intro9", text = "Now, the crisis is coming to a head..."}},
		
		-- time text thingy
		{"SetVars", {timeText = "33 days, 17 hours before the Stasis", timeTextID = "prologue1_timeText"}},
		{"CallScript", "timeTextSplash"},
		
		{"PlayMusic", "music/Evacuation (Action).ogg"},
		{"AddBackground", {file = "images/bg/fields_of_isis.png", animation = {type="dissolve", time = 2}, wait = 2}},
		{"AddText", {speakerID = "imperial", textID = "prologue1_intro10", text = "Rebel units approaching! Range 700!"}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro11", text = "Tch... I was hoping we'd have a little more time."}},
		--{"ClearText"},
		{"PlaySound", "sfx/weapon/cannon/cannon_fire5.wav"},
		{"Wait", 0.15},
		{"PlaySound", "sfx/weapon/cannon/cannon_fire5.wav"},
		{"Wait", 0.4},
		{"PlaySound", "sfx/weapon/cannon/cannon_fire5.wav"},
		{"Wait", 0.15},
		{"PlaySound", "sfx/weapon/cannon/cannon_fire5.wav"},
		{"Wait", 0.5},
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"Wait", 0.15}, 
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"ShakeScreen", {time = 2}},
		{"Wait", 2},
		{"AddBackground", {file = "images/cg/prologue1_rebelvehicles.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddText", {textID = "prologue1_intro12", text = "The rebel army surges upon the loyalist position guarding the pass in a wave of steel."}},
		-- {"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		{"AddText", {textID = "prologue1_intro13", text = "The defenders are well-entrenched, and they fight valiantly, even desperately. But their enemies seem without limit."}},
		{"AddText", {textID = "prologue1_intro14", text = "Armored vehicles press on through a hail of energy fire, grinding the corpses of friend and foe alike beneath their wheels."}},
		{"AddText", {textID = "prologue1_intro15", text = "Their war chant broadcasts on all channels."}},
		{"AddText", {speakerID = "rebels", textID = "prologue1_intro16", text = "DEATH TO THE FALSE EMPEROR\nDEATH TO THE FALSE EMPEROR\nDEATH TO THE FALSE EMPEROR"}},
		{"PlaySound", "sfx/explosion/ex_small14.wav"},
		{"ShakeScreen", {time = 1, strengthY = 0}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro17", text = "You're the ones serving the false Emperor!!"}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro18", text = "You know they can't hear you, right?"}},
		
		{"AddBackground", {file = "images/cg/prologue1_ada_intro.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddText", {textID = "prologue1_intro19", text = "My name is Ada Eveline Caedmon. Captain, 13th Imperial Auxiliary Cohort."}},
		{"AddText", {textID = "prologue1_intro20", text = "For years I've served the Emperor of Earth, battling rebels, invaders and pretenders in his name."}},
		{"AddText", {textID = "prologue1_intro21", text = "Now I've come to this barren land with my trusted AI aide Sophia, in the hope of buying a little more time for the defenders of the Throne world to prepare for the final onslaught."}},
		--"There may not be an empire for me to serve much longer, but until that moment comes to pass, I will stand and fight!"
		
		{"AddBackground", {file = "images/bg/fields_of_isis.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"ShakeScreen", {time = 2}},
		
		{"AddText", {speakerID = "ada", textID = "prologue1_intro22", text = "Damn. There's millions of them."}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro23", text = "Enemy artillery is thirteen clicks out. The situation will soon become untenable."}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro24", text = "Reinforcements?"}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro25", text = "None can arrive till we've been shelled for at least three minutes. And given the situation on the rest of the front, none may arrive at all. We should withdraw while we can."}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro26", text = "I don't like the idea of cutting and running while someone else dies to cover my retreat."}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro27", text = "How do you feel about both you and them dying, friend Ada?"}},
		{"AddText", {textID = "prologue1_intro19", text = "That's Sophia for you. She's nice and really helpful, but at times she can be a real smartass without even trying."}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro29", text = "Ugh... Fine. Transport, prepare for a hot extraction."}},
		
		{"AddBackground", {file = "images/cg/prologue1_transport_1.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddText", {speakerID = "imperial", textID = "prologue1_intro30", text = "Copy that. Transport is– Mud spike! Enemy SAM detected!"}},
		--{"ClearText"},
		{"PlaySound", "sfx/weapon/missile/missile_fire3.wav"},
		{"AddBackground", {file = "images/cg/prologue1_transport_2.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1}, 
		{"PlaySound", "sfx/weapon/missile/missile_fire3.wav"},
		{"Wait", 1},
		{"AddBackground", {file = "images/bg/fields_of_isis_sky.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 0.5},
		{"PlaySound", "sfx/explosion/ex_med6.wav"},
		{"ShakeScreen", {time = 1, strengthX = 0}},
		{"Wait", 1},
		
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro31", text = "It seems we are surrounded, friend Ada. I can only assume the 11th cohort has been broken."}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro32", text = "Wonderful. I don't suppose you have another way out of here?"}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_intro33", text = "We do have a second transport. There's still time; we need to fight out way through the flanking forces and get to the secondary extraction point."}},
		
		{"AddBackground", {file = "images/cg/prologue1_ada_intro.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "prologue1_intro34", text = "All right, then. Come and get me, you usurping dogs!"}},
		
		{"StopMusic"},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}, wait = 1.5}},
		
		{"AddText", {textID = "skipMission_tutorial", text = "Skip the tutorial mission?", wait = false}},
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("prologue1_outro_win") end },
			{text = "No", action = function() scriptFunctions.JumpScript("prologue1_mission") end },
		}},
	},
	prologue1_mission = {
		{"CustomAction", function() WG.CampaignHandler.LaunchMission("prologue1",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("prologue1_outro_win")
				else
					WG.VisualNovel.StartScript("prologue1_outro_lose")
				end
			end)
		end},
		{"Exit"}
	},
	prologue1_outro_win = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("prologue1_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("prologue1", "prologue2_intro", "Prologue 2") end},
		function() WG.CampaignHandler.UnlockCodexEntry("faction_empire") end,
		function() WG.CampaignHandler.UnlockCodexEntry("character_ada") end,
		function() WG.CampaignHandler.UnlockCodexEntry("character_sophia") end,
		{"PlayMusic", "music/Inspiring.ogg"},
		{"AddBackground", {file = "images/cg/prologue1_transport_3_alt.png", animation = {type="dissolve", time = 2}, wait = 2}},
		{"AddText", {speakerID = "ada", textID = "prologue1_outro1", text = "Alright, let's get out of here!"}},
		{"AddText", {speakerID = "sophia", textID = "prologue1_outro2", text = "We'll head for Fort Hathor. Let our efforts have bought them time enough to stop the rebels here."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 2}, wait = 3}},
		{"StopMusic"},
		{"Exit"}
	},
	prologue1_outro_lose = {
		-- TODO quit
		{"Exit"}
	},
}

return scripts