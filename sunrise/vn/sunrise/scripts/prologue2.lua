local scripts = {
	prologue2_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("prologue2_intro") end},
		{"PlayMusic", "music/March.ogg"},
		{"AddBackground", {file = "images/cg/prologue2_desertbase.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "prologue2_intro1", text = "Fort Hathor. One of the second-to-last defense nodes of the Empire short of the Throne world itself."}},
		{"AddText", {textID = "prologue2_intro2", text = "Even this adjunct node bustles like an overturned ant nest. Construction bots scramble to shore up the defenses, while AFVs assemble into battlegroups to meet the enemy head-on."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro3", text = "Home sweet home. Looks like everyone's busy."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro4", text = "Now we just need to go find the Colonel and see how we can make ourselves useful."}},
		{"PlaySound", "sfx/explosion/ex_small14.wav"},
		{"AddText", {speakerID = "unknown", textID = "prologue2_intro5", text = "CAEDMON!!"}},
		{"AddText", {textID = "prologue2_intro6", text = "I just about jump out of my skin at the booming voice. Ugh... at least with the direct neural feed my eardrums aren't physically hurt... though I'll probably get a migraine if this keeps up."}},
		{"AddBackground", {file = "images/cg/prologue2_desertbase2.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro7", text = "Yes, Colonel?"}},
		{"AddText", {speakerID = "imperialColonel", textID = "prologue2_intro8", text = "What do you think you're doing back here, eh? Desertion, cowardice in the face of the enemy... If we weren't so shorthanded, I'd have you executed on the spot!"}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_intro9", text = "The position was lost, Colonel. Failing to withdraw would only have resulted in the destruction of a critical command unit."}},
		{"AddText", {speakerID = "imperialColonel", textID = "prologue2_intro10", text = "SILENCE! Who permitted you to speak, AI?"}},
		{"AddText", {textID = "prologue2_intro11", text = "Ugh, not this again. Aethelred's one of those goddamn Trueborns who've been calling the shots in the Empire ever since Saktoth the Great's reign. Which means that nothing a mere toaster – or a mutant like me – could have any possible value for him."}},
		{"AddText", {textID = "prologue2_intro12", text = "It might be tolerable if he was actually any good at his job, even if only for a baseline. As it is, me and Sophia could easily outmaneuver him in our sleep."}},
		{"AddText", {textID = "prologue2_intro13", text = "Unfortunately, even if I was allowed to tell him what I really think of his pompous buffoonery, we don't have time for this right now."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro14", text = "I apologize, Colonel. Please allow me to redeem myself in service of the Emperor."}},
		{"AddText", {speakerID = "imperialColonel", textID = "prologue2_intro15", text = "Hmph. What use could I possibly find for one such as you?"}}, 
		{"AddText", {speakerID = "imperialColonel", textID = "prologue2_intro16", text = "...Still, the outpost in sector 13, 2 requires an FARP. See to it at once."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro17", text = "Aye, aye, sir!"}},
		{"AddText", {speakerID = "imperialColonel", textID = "prologue2_intro18", text = "And I need not remind you that further cowardice will not be tolerated. Understood, captain?"}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro19", text = "Yes, sir."}},
		{"AddText", {textID = "prologue2_intro20", text = "I give the face on my display a picture-perfect salute. He snorts, and says nothing more before cutting the connection."}},
		{"AddBackground", {file = "images/cg/prologue2_desertbase.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro21", text = "...Pusbag."}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_intro22", text = "Do you intend to move out soon, friend Ada?"}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro23", text = "Why? This is an utter misuse of our capabilities."}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_intro24", text = "Nevertheless, we have our orders. It is now up to us to carry them out to the best of our ability."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_intro25", text = "Hmph... fine, it's not like I have anything better to do."}},
		{"AddText", {textID = "prologue2_intro26", text = "...I just wish I knew if it'll all matter in the end."}},
		{"StopMusic"},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"JumpScript", "prologue2"},
	},
	
	prologue2 = {
		{"SetVars", {episode = "Prologue 2", episodeName = "Cold Path", episodeID = "prologue2_episodeID", episodeNameID = "prologue2_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
			
		{"PlayMusic", "music/Intro.ogg"},
		
		{"SetNVLMode", true},
		
		--show factionicon empire at truecenter, spinY with dissolve
		
		{"AddText", {textID = "prologue2_27", text = "Hundreds of years ago, the Legate Saktoth led the Imperial Vanguard Legion in battle against the foes of a burning Empire."}},
		{"AddText", {textID = "prologue2_28", text = "He crushed the pirates threatening the imperial borders, then joined forces with the human purity advocates of the True Born to subdue the rebellious Free Machines. With these martial triumphs under his banner, he was crowned Emperor."}},
		{"AddText", {textID = "prologue2_29", text = "The Trueborns were given positions of power in reward for their assistance, and soon came to dominte the new order's politics. In time, the genetically augmented citizens and even those of the great noble houses soon found themselves targets of persecution. The AIs, already little trusted by their human masters, were further constrained; only the necessity of their continued function prevented their outright destruction."}},
		{"AddText", {textID = "prologue2_30", text = "Still, Saktoth I's reign was a peaceful and well-regarded time, and the worst excesses had yet to take root. After his death, however, the imperial hierarchy ossified, and the structure began to crumble under the weight of a succession of weak emperors."}},
		{"AddText", {textID = "prologue2_31", text = "In time, those who had felt the boot or the yoke of the old Empire began plotting vengeance. Revolts and invasions broke out across the Imperial borders, the fires of war spreading to seemingly even the most quiet corners of the galaxy.\nLike here..."}},
	        
		{"ClearNVL"},
		{"SetNVLMode", false},
		{"StopMusic"},
		{"Wait", 2},
		
		{"SetVars", {timeText = "19 days, 9 hours before the Stasis", timeTextID = "prologue2_timeText"}},
		{"CallScript", "timeTextSplash"},
		
		{"PlayMusic", "sfx/ambience/outdoor-windy-ambience.ogg"},
		{"AddBackground", {file = "images/bg/glacies.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "prologue2_1", text = "The wind howls over the snowscaped valley. Even inside my climate-controlled cockpit, I can feel the cold biting into my face."}},
		{"AddText", {textID = "prologue2_2", text = "After that last debacle, the 13th has been moved out to the lonely little world of CB-135. The rebels have been stopped – for now – but now the Free Machines are closing in."}},
		{"AddText", {textID = "prologue2_3", text = "An advance force has been confirmed in this sector. Command has dispatched us here to perform a reconnaisance-in-force and turn back the enemy incursion if we can."}},
		{"AddText", {textID = "prologue2_4", text = "They didn't say it in so many words, but it's not hard to see that ultimately we're just delaying them. The Empire has made too many enemies, and they've been allowed to grow too strong."}},
		{"AddText", {textID = "prologue2_5", text = "Still, I have a job to do. Tomorrow can worry about itself."}},
		{"AddText", {textID = "prologue2_6", text = "Besides, if we put up a good fight, we might even drag the war out long enough for a negotiated settlement... Ha! That'll be the day."}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_7", text = "No sign of the enemy just yet. We have an opportunity to dig in and prepare for the upcoming engagement."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_8", text = "They probably decided to stay home. Even the Machines know better than to come to this iceball."}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_9", text = "Ambient air temperature is only 254 K, friend Ada."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_10", text = "That's negative 19 degrees C!"}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_11", text = "Negative 19.25°C, friend Ada. Precision is important in such matters."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_12", text = "Ugh. Look, it's really cold, alright?"}},
		
		{"AddBackground", {file = "images/cg/prologue2_ada_water.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "prologue2_13", text = "Actually, why isn't the river frozen?"}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_14", text = "It's not actually a river. It's an... elongated lake formed in a recessed channel when local geothermal activity melted the snow. Actually, I think at least one end connects to an underground aquifer as well."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_15", text = "Interesting..."}},
		{"AddText", {textID = "prologue2_16", text = "I'd admit, it's actually quite pretty. Calming, even."}},
		{"AddText", {textID = "prologue2_17", text = "The whole valley is like that, really. Too bad it won't be that way for much longer now. I hate to despoil a place like this, but..."}},
		{"AddBackground", {file = "images/bg/glacies_sky.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "prologue2_18", text = "...Well, we'd better get ready. If the Machines really are here, it's only a matter of time... and I don't intend to run away this time."}},
		
		{"StopMusic"},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}, wait = 1.5}},
		{"AddText", {textID = "skipMission_tutorial", text = "Skip the tutorial mission?", wait = false}},
		
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("prologue2_outro_win") end },
			{text = "No", action = function() scriptFunctions.JumpScript("prologue2_mission") end },
		}},
	},
	
	prologue2_mission = {
		{"CustomAction", function() WG.CampaignHandler.LaunchMission("prologue2",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("prologue2_outro_win")
				else
					WG.VisualNovel.StartScript("prologue2_outro_lose")
				end
			end)
		end},
	},
	
	prologue2_outro_win = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("prologue2_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("prologue2", "episode1_intro", "Episode 1") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_machines") end},
		{"AddBackground", {file = "images/bg/glacies.png", animation = {type="dissolve", time = 1.5}, wait = 1.5}},
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"ShakeScreen", {time=1}},
		{"PlayMusic", "sfx/ambience/outdoor-windy-ambience.ogg"},
		
		{"AddText", {speakerID = "ada", textID = "prologue2_outro1", text = "And that's the last of them."}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_outro2", text = "I would have expected a larger enemy presence..."}},
		
		{"PlaySound", "sfx/message_team.wav"},
		{"AddText", {speakerID = "imperial", textID = "prologue1_outro3", text = "Sector HQ to 13th Cohort, come in! 13th Cohort–"}},
		{"AddText", {speakerID = "ada", textID = "prologue2_outro4", text = "HQ, 13th Actual. We've encountered and–"}},
		{"PlayMusic", "music/Tension.ogg"},
		{"AddText", {speakerID = "imperial", textID = "prologue1_outro5", text = "Forget that! The enemy is headed for Hadrian! The Promethean has been sighted! I repeat, the Promethean has been sighted!"}},
		{"AddText", {speakerID = "ada", textID = "prologue2_outro6", text = "...!"}},
		{"AddText", {speakerID = "sophia", textID = "prologue2_outro7", text = "It appears this was merely a feint."}},
		{"AddText", {textID = "prologue2_outro8", text = "The leader of the Free Machines? Leading an invasion into imperial territory himself?"}},
		{"AddText", {textID = "prologue2_outro9", text = "This is bad. Really bad."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_outro10", text = "Orders, command?"}},
		{"AddText", {speakerID = "imperial", textID = "prologue1_outro11", text = "All units are to return to Hadrian at once. Command wants the incursion stopped here and the Promethean neutralized. Do you copy?"}},
		{"AddText", {speakerID = "ada", textID = "prologue2_outro12", text = "Copy, command. Returning to base."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 2}, wait = 2}},
		{"AddText", {textID = "prologue2_outro13", text = "The Promethean... he's a canny one. Taking him down won't be easy."}},
		{"AddText", {speakerID = "ada", textID = "prologue2_outro14", text = "Well, Sophia, our weekend just got a whole lot more interesting."}},
		{"Wait", 0.5},
		{"StopMusic"},
		{"Exit"}
	},
	
	prologue2_outro_lose = {
		-- TODO quit
		{"Exit"}
	},
}

return scripts