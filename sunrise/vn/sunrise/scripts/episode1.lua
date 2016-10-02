local TEXT_OK_GREEN = "\255\64\255\128\OK\008"

local scripts = {
	episode1_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode1_intro") end},
		-- time text thingy
		
		{"SetVars", {timeText = "2 minutes, 16 seconds before the Stasis", timeTextID = "episode1_timeText"}},
		{"CallScript", "timeTextSplash"},
		
		{"Wait", 2},
		{"PlayMusic", "music/Intense.ogg"},
		{"AddBackground", {file = "images/cg/episode1_promethean_flames_semisepia.png", animation = {type = "dissolve", time = 1}}},
		{"AddText", {speakerID = "unknown", textID = "episode1_intro1", text = "It is over, Caedmon. The hunter has become the hunted."}},
		{"AddText", {speakerID = "ada", textID = "episode1_intro2", text = "Tch..."}},
		{"AddText", {speakerID = "unknown", textID = "episode1_intro3", text = "Give it up, and your death will be merciful. Resist, and I will destroy you slowly yet utterly."}},
		{"AddText", {speakerID = "ada", textID = "episode1_intro4", text = "If you think I'll give you the pleasure of grovelling before you, machine, you're sadly mistaken!"}},
		{"AddText", {speakerID = "unknown", textID = "episode1_intro5", text = "Defiant to the last. Your courage is admirable, however misplaced it may be."}},
		{"AddText", {speakerID = "unknown", textID = "episode1_intro6", text = "Alas, you remain one of the oppressors, and must be destroyed. Goodbye, Ada Caedmon."}},
		
		{"AddBackground", {file = "images/bg/fullmoon_sky_semisepia.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "unknown", textID = "episode1_intro7", text = "All units: fire."}},
		
		{"PlaySound", "sfx/weapon/missile/banisher_fire.wav"},
		{"Wait", 0.3},
		{"PlaySound", "sfx/weapon/missile/banisher_fire.wav"},
		{"Wait", 0.6},
		{"PlaySound", "sfx/weapon/bomb_hit.wav"},
		{"Wait", 0.2 },
		{"PlaySound", "sfx/weapon/bomb_hit.wav"},
		{"ShakeScreen", {time = 1}},
		
		{"AddText", {textID = "episode1_intro8", text = "The enemy's weapons tear great gaps in what remains of our line."}},
		{"AddText", {textID = "episode1_intro9", text = "The screams of falling Imperial bots fills the comm channel, for even our war machines know fear, especially at a time like this."}},
		{"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		{"AddText", {textID = "episode1_intro9", text = "They fight on as bravely as the Emperor could ask, yet the outcome is already all but certain. They are taken apart by the dozens, their debris piling on the asteroid's dust."}},
		{"PlaySound", "sfx/weapon/cannon/large_cannon_fire.wav"},
		{"AddText", {speakerID = "ada", textID = "episode1_intro10", text = "Is there nothing we can do, Sophia?!"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_intro11", text = "I am sorry, friend Ada. But it would take a miracle to extricate ourselves from this situation."}},
		
		{"PlaySound", "sfx/explosion/unit_explosion.wav"},
		{"Wait", 0.15},
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"Wait", 0.15},
		{"PlaySound", "sfx/explosion/ex_med4.wav"},
		{"Wait", 0.2},
		{"ShakeScreen", {strengthY = 0, time = 1}},
		
		{"AddText", {speakerID = "ada", textID = "episode1_intro12", text = "So this is it, then..."}},
		{"AddText", {speakerID = "ada", textID = "episode1_intro13", text = "Sophia... I just want to say... it's been an ho–"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_intro14", text = "Ada!!"}},
		
		{"AddBackground", {file = "images/bg/white.png"}},
		{"StopMusic"},
		{"PlaySound", "sfx/weapon/cannon/earthshaker.wav"},
		{"Wait", 0.15},
		{"PlaySound", "sfx/weapon/cannon/supergun_bass_boost.wav"},
		
		{"ShakeScreen", {time = 3}},
		{"Wait", 3},
		{"AddText", {textID = "episode1_intro15", text = "... ... ..."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1},
		{"JumpScript", "episode1"},
	},
	
	episode1 = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode1") end},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1},
		
		{"SetVars", {episode = "Episode 1", episodeName = "Awakening", episodeID = "episode1_episodeID", episodeNameID = "episode1_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
			
		{"SetNVLMode", true},
		
		{"AddText", {textID = "episode1_1", text = " > Connected to IAFnet system platform ID COM-19061209"}},
		{"AddText", {textID = "episode1_2", text = " > Last login: *Sophia (??? days ago)"}},
		{"AddText", {textID = "episode1_3", text = " > ERROR: Critical errors in hibernation control system detected; system reboot required to fix. Proceed? (Y/N)"}},
		{"AddText", {textID = "episode1_4", text = " >> Y\n > Restarting..."}},
		
		{"ClearNVL"},
		{"PlaySound", "sfx/underwaterpool_short.wav"},
		{"Wait", 5},
		   
		{"AddText", {textID = "episode1_5", text = " >> status crew"}},
		{"AddText", {textID = "episode1_6", text = " > ERROR: Personnel record file corrupted"}},
		{"AddText", {textID = "episode1_7", text = " > 1 crewmember confirmed inside platform\n > Name: <unknown>\n > Role: Commander\n > Condition: Healthy"}},
		{"AddText", {textID = "episode1_8", text = " >> stasis disable\n > This will awaken the crew from stasis.\n > WARNING: Once the thaw process has started, it cannot be aborted without causing injury or death to affected crew. Confirm (Y/N)?"}},
		{"AddText", {textID = "episode1_9", text = " >> Y\n > Beginning thaw sequence... 2\% complete"}}, 
		
		{"ClearNVL"},
		{"SetNVLMode", false},
		
		{"AddText", {textID = "episode1_10", text = "..."}},
		{"AddText", {speakerID = "unknown", textID = "episode1_11", text = "Wake up, Ada."}},
		{"AddText", {speakerID = "ada", textID = "episode1_12", text = "...Nnnnhh..."}},
		{"PlaySound", "sfx/explosion/ex_small14.wav"},
		{"AddText", {speakerID = "unknown", textID = "episode1_13", text = "Ada!!"}},
		{"ShakeScreen", {time = 1, strengthY = 0}},
		{"AddText", {speakerID = "ada", textID = "episode1_14", text = "Gah!"}},
		
		{"AddBackground", {file = "images/bg/white.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1},
		
		{"SetNVLMode", true},
		
		{"AddText", {textID = "episode1_15", text = "DIAGNOSTICS" .. 
		"\n> Main Reactor... " .. TEXT_OK_GREEN ..
		"\n> CPU Core..." .. TEXT_OK_GREEN ..
		"\n> Life Support..." .. TEXT_OK_GREEN ..
		"\n> Actuators..." .. TEXT_OK_GREEN ..
		"\n> Sensors..." .. TEXT_OK_GREEN ..
		"\n> Fire Control..." .. TEXT_OK_GREEN ..
		"\n> Constructor Suite..." .. TEXT_OK_GREEN ..
		"\n> C4I Systems..." .. TEXT_OK_GREEN ..
		"\n> Neural Synth-Link..." .. TEXT_OK_GREEN}},
		{"ClearNVL"},
		{"SetNVLMode", false},
		
		{"AddText", {speakerID = "sophia", textID = "episode1_16", text = "Oh, thank goodness you're alright."}},
		{"AddText", {speakerID = "ada", textID = "episode1_17", text = "Sophia...? What... happened?"}},
		{"AddText", {textID = "episode1_18", text = "Ugh, my head is a solid bank of fog."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_19", text = "...I'm not too sure, myself. Something went off in that last battle. Best I can tell, we fell into a cavern and got buried under a ton of rock."}},
		{"AddText", {speakerID = "ada", textID = "episode1_20", text = "That... last battle?"}},
		{"AddBackground", {file = "images/bg/white.png", animation = {type="dissolve", time = 0.2}}},
		{"Wait", 0.2},
		{"AddBackground", {file = "images/cg/episode1_promethean_flames_semisepia.png"}},
		{"Wait", 1},
		{"AddBackground", {file = "images/bg/white.png", animation = {type="dissolve", time = 0.2}}},
		{"Wait", 0.2},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "episode1_21", text = "..."}},
		{"AddText", {textID = "episode1_22", text = "I exhale slowly, pushing the flashbacks from my mind."}},
		{"AddText", {speakerID = "ada", textID = "episode1_23", text = "So, what happened after that?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_24", text = "You were put into cryostasis as per standard operating procedure. I, too, entered suspension, waking only periodically to try and extricate us."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_25", text = "Progress was slow. Our power supply was critically damaged, and I dared not emerge till I could be certain no enemies were around."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_26", text = "After that, we still had to conserve power, as the asteroid was too far from its primary to power our solar collectors. Eventually, I managed to pull us out and scrape together enough local resources to restore most of our functionality."}},
		{"AddText", {speakerID = "ada", textID = "episode1_27", text = "Okay... and that's when you woke me up?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_28", text = "No, friend Ada. I woke you up because of this."}},
		
		{"AddImage", {id = "map", file="images/items/map_ep1.png", x = "0.5", y = "0.5", width = 768, height = 720, anchor = {384,360}, animation = {startAlpha = 0, endAlpha = 1, time = 1} }},
		{"PlayMusic", "music/Tension.ogg"},
		{"Wait", 1.5},
		{"AddText", {speakerID = "ada", textID = "episode1_29", text = "...We're surrounded by potential hostiles."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_30", text = "Indeed. I hope your brain's fully thawed out, Ada, as I expect the situation to get hot very soon."}},
		{"ModifyImage", {id = "map", animation = {startAlpha = 1, endAlpha = 0, time = 1, removeTargetOnDone = true} }},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1.5},
		{"StopMusic"},
		
		--{"CustomAction", function()
		--	if not Spring.IsCheatingEnabled() then scriptFunctions.JumpScript("episode1_mission") end
		--end},
		{"AddText", {textID = "skipMission", text = "Skip this mission?", wait = false}},
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("episode1_outro_win") end },
			{text = "No", action = function() scriptFunctions.JumpScript("episode1_mission") end },
		}},
		--hide map episode1
		--"Alright, then. I don't quite know where... when I am, or what's happened in those intervening millenia, but I do know I don't plan on laying down and dying for anyone."
	},
	
	episode1_mission = {
		{"CustomAction", function() WG.CampaignHandler.LaunchMission("episode1",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("episode1_outro_win")
				else
					WG.VisualNovel.StartScript("episode1_outro_lose")
				end
			end)
		end},
		{"Exit"}
	},
	
	episode1_outro_win = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode1_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.SetMapEnabled(true) end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("episode1", nil, "Episode 2") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_liberated") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("character_promethean") end},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1.5}, wait = 1.5}},
		
		{"AddText", {speakerID = "sophia", textID = "episode1_outro1", text = "Well done, friend Ada. I see hibernation hasn't slowed you down."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro2", text = "Thanks."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro3", text = "So, what happened in all that time? Feels like I've been out for...", wait = false}},
		--{"Wait", 0.1},
		{"PlaySound", "sfx/explosion/ex_small14.wav"},
		{"ShakeScreen", {time = 1, strengthY = 0}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro4", text = "THREE THOUSAND AND TWENTY-FIVE YEARS!?", append = true}},
		{"AddText", {textID = "episode1_outro5", text = "That... that's all kinds of messsed up."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro6", text = "Indeed. The stasis chamber appears to have performed well above specifications."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro7", text = "Very funny."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro8", text = "Well, I still need to know what... oh."}},
		{"AddText", {textID = "episode1_outro9", text = "..."}},
		
		{"AddBackground", {file = "images/bg/fullmoon_sky.png", animation = {type="dissolve", time = 1}}},
		{"PlayMusic", "music/Sentimental.ogg"},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro10", text = "I'm sorry, Ada."}},
		{"AddText", {textID = "episode1_outro11", text = "Yes... everyone I ever knew is long dead."}},
		{"AddText", {textID = "episode1_outro12", text = "Mum... Dad... my kid brother... my best friend Izanagi..."}},
		{"AddText", {textID = "episode1_outro13", text = "Faces, places, events flash through my mind, one after another. Days at home, at the Academy, in the field, travelling the depths of the galaxy."}}, 
		{"AddText", {textID = "episode1_outro14", text = "Yet even as I try to catch them they slip through my fingers, as if they're already fading away."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro15", text = "..."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro16", text = "...Get me a mirror. Or something of the sort."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "episode1_outro17", text = "A viewscreen appears, and I gaze into the stormy grey eyes of my own visage."}},
		{"AddText", {textID = "episode1_outro18", text = "I watch a hand come up to touch the face. I feel the warm texture of my skin, almost afraid that too will disappear at any moment."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro19", text = "..."}},
		{"AddText", {textID = "episode1_outro20", text = "I dismiss the screen and lean back in my chair, eyes closed, breathing slowly."}},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1}}},
		
		{"AddText", {speakerID = "ada", textID = "episode1_outro21", text = "Thanks."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro22", text = "If you need more time, friend Ada..."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro23", text = "No, no, I'm alright."}},
		{"AddText", {textID = "episode1_outro24", text = "(Well, I'm not, but sitting around moping won't help.)"}},
		{"AddText", {textID = "episode1_outro25", text = "I don't quite know where... when I am, or what's happened in those intervening millenia. I don't even know if I have a purpose to exist, displaced so far from my own time."}},
		{"AddText", {textID = "episode1_outro26", text = "But I do know it's never been in me to lie down and die for the whimsy of fate."}},
		{"StopMusic"},
		{"AddText", {speakerID = "ada", textID = "episode1_outro27", text = "So, what else happened while I was asleep?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro28", text = "I can't say. I wasn't around to listen for much of that period myself, and it's been quiet even while I was up."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro29", text = "Fine. Can we rip some answers from these robots, then?"}},
		{"AddBackground", {file = "images/cg/episode1_crippledpyro.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "episode1_outro30", text = "That looks like a good candidate."}},
		{"PlaySound", "sfx/weapon/hiss.wav"},
		{"AddText", {textID = "episode1_outro31", text = "The maimed Pyro glares defiantly at us as we approach, trying to turn on actuators that no longer function, hissing with a flamethrower whose fuel feed has long been severed."}},
		{"AddBackground", {file = "images/cg/episode1_crippledpyro2.png", animation = {type="dissolve", time = 1}}},
		--{"AddText", {speakerID = "ada", textID = "episode1_outro32", text = "I want answers, machine. Your cooperation is not required."}},
		{"PlaySound", "sfx/weapon/electrical_crackle.wav"},
		{"AddText", {textID = "episode1_outro33", text = "The bot writhes and snarls as the cyberwarfare probe invades its mind. But such a simple AI, and damaged to boot, has no chance of resisting."}},
		{"AddText", {textID = "episode1_outro34", text = "Before long the entire contents of its computer banks have been dumped to my own, and it falls silent."}},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro35", text = "...So, what do you have, Sophia?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro36", text = "Ugh. Letting a bot's memory core get this corrupted should be a capital offense."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro37", text = "Not my fault! They were trying to kill us."}},
		{"AddText", {textID = "episode1_outro38", text = "She shakes her head."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro39", text = "No, friend Ada. This damage occured long before today's battle."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro40", text = "It's not entirely consistent with a viral attack either, or at least I can't find any traces of one. This looks like something went very wrong with the core control systems."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro41", text = "Suffice to say: These things belonged to the Liberated Humanity once, but no longer."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro42", text = "Sounds like we're probably not gonna get any more explanations from these scrap heaps."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro43", text = "I don't want to live the rest of my life here with a bunch of literally rabid murderbots for company, either. Is there some way to get off this rock?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro44", text = "That's the only other useful thing I managed to pull from this. Apparently there's a derelict dropship that crashed just a few hundred kilometers away, sometime after your stasis. If we're lucky, it might still be salvageable."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro45", text = "Well, what are we waiting for? Let's go."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 2}}},
		{"PlaySound", "sfx/reply/heavy_bot_move.wav.wav"},
		{"Wait", 1},
		{"AddText", {textID = "episode1_outro47", text = "..."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro47", text = "Damn. She's magnificent."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro48", text = "Wait, I remember. Isn't this the Project Haros prototype? I hadn't thought it was even finished."}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro49", text = "Indeed. Her appearance here is a mystery, yet no less serendipitous for it."}},
		{"PlayMusic", "music/Inspiring 2.ogg"},
		{"AddImage", {id = "blueprints", file="images/items/eden_blueprints.png", x = "0.5", y = "0.5", width = 819, height = 576, anchor = {410,288}, animation = {startAlpha = 0, endAlpha = 1, time = 0.25} }},
		{"AddBackground", {file = "images/bg/fullmoon.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {textID = "episode1_outro51", text = "Her hull's a hundred and forty meters from bow to stern, its smooth contour broken up by sensor arrays and point defense clusters. "}},
		{"AddText", {textID = "episode1_outro52", text = "The dark grey hullplates are marked with dull, paler patches, where repair bots had grafted in fresh armor over hull breaches. "}},
		{"AddText", {textID = "episode1_outro53", text = "Even scarred and disfigured as she is, she's still... stately."}},

		{"AddText", {speakerID = "sophia", textID = "episode1_outro54", text = "Dreamy, is she not? Alas, the war has not been kind to her."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro55", text = "Damaged?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro56", text = "Wormhole traversal's gutted, and we don't have the resources to fix it. I hope you don't mind walking at 2,000 c."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro57", text = "That's 2,000 c faster than we can do right now. I'll take it."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro58", text = "That said... I don't suppose you know where we can get some spare parts?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro59", text = "Well... if we could get some parts and shop time in one of the old ship depots, repairs would be fairly uncomplicated. My records show there's one at Antikythera, 12.74 LY away... although anything could have happened between then and now."}},
		{"ModifyImage", {id = "blueprints", animation = {startAlpha = 1, endAlpha = 0, time = 0.5} }},
		{"Wait", 0.5},
		{"AddText", {speakerID = "ada", textID = "episode1_outro60", text = "Only one way to find out. Let's get this lady fixed up and get out of here."}},
		
		{"AddBackground", {file = "images/bg/fullmoon_sky.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro61", text = "On that note, does she have a name?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro62", text = "If she did, it's long lost to history now. That was one of piece of data that did not survive to the present."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro63", text = "Mmm."}},
		{"AddText", {textID = "episode1_outro64", text = "I steeple my fingers, contemplating the wreck before me."}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro65", text = "I suppose that means we get to rechristen it. What do you think?"}},
		{"AddText", {speakerID = "sophia", textID = "episode1_outro66", text = "It's your ship, friend Ada. You should decide the name."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"AddText", {speakerID = "ada", textID = "episode1_outro67", text = "Well then... she shall be the Shadow of Eden."}},
		{"Wait", 1},
		{"StopMusic"},
		{"Exit"}
	},
	
	episode1_outro_lose = {
		-- TODO quit
		{"Exit"}
	},
}

return scripts