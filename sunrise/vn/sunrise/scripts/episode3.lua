local scripts = {
	episode3_intro = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode3_intro") end},
		{"AddBackground", {file = "images/bg/blank.png"}},
		{"Wait", 2},
		
		{"PlaySound", "sfx/misc/teleport2.wav"},
		--{"AddImage", {id = "fadeOverlay", file = "images/bg/blank.png", width = 1920, height = 1280, y = -240}},
		{"AddImage", {id = "planet", file = "images/planets/tundra01.png", width = 224, height = 224, x = 100, y = 260, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"AddImage", {id = "background2", file = "images/bg/space/3.jpg", width = 1536, height = 1536, x = -100, y = -156, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		--{"ModifyImage", {id = "fadeOverlay", animation = {endAlpha = 0, time = 1}}},
		{"ModifyImage", {id = "planet", animation = {endX = 210, time = 6}}},
		{"ModifyImage", {id = "background2", animation = {endX = -50, time = 6}}},
		{"Wait", 2},
		
		{"AddText", {speakerID = "sophia", textID = "episode3_intro1", text = "Well, here we are. With a little luck, we can get patched up and leave without any Murphy events."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro2", text = "How long till we get there?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro3", text = "Thirty-two minutes, if you're going for a least-time. Of course, we want to stop by, so we'll be waiting around an hour before we can disembark."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro4", text = "In the meantime, we might as well take a look around the system."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro5", text = "See anything unusual?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro6", text = "There's..."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro7", text = "Well, now. It's still in Imperial hands, alright... but they don't seem very happy to see us."}},
		{"AddText", {textID = "episode3_intro8", text = "That's sufficient to make me sit up in my chair."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro9", text = "What do you mean?"}},
		--"I have eyes on an active orbital defense platform," the AI muttered, popping up a viewscreen of the installation. "It''s only a small part of the full-up defense grid, but it also happens to be sitting right over where our fabrication plant is... and its targeting radar is active and painting us." Another pause. "They''re hailing us. ‘Go away,'' it says."
		{"AddText", {speakerID = "sophia", textID = "episode3_intro10", text = "I have eyes on an active orbital defense platform. It's only a small part of the full-up defense grid, but it also happens to be sitting right over where our fabrication plant is."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro10.5", text = "We're also receiving a comm message. It's rather repetitive."}},
		{"AddText", {speakerID = "unknown", textID = "episode3_intro11", text = "*** GO AWAY ***\n*** INTRUDERS WILL BE DESTROYED ***\n*** YOU ARE NOT WELCOME HERE ***\n*** DEPART AT ONCE ***"}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro12", text = "Well that's certainly friendly. Did they identify themselves?"}},
		{"AddText", {textID = "episode3_intro13", text = "Sophia doesn't answer for a while, pausing as if wondering how to break the news. That's... not like her. At all."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro14", text = "...They're the Empire Reborn, claiming the planet of Antikythera and the entire Tsiolkovsky's Star system in the name of the Emperor."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro15", text = "!! So the Empire survived too..."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro16", text = "It appears so, yes. But after three thousand years... I don't think it's an Empire we'd recognize."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro17", text = "Well, we've got to make contact with them regardless. Transmit my auxiliary ID code, Sophia."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro18", text = "That is unlikely to work, friend Ada. Any code you possess will be three millenia out of date."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro19", text = "It's still our best shot. They may at least recognize it as a really-old code and come to investigate."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro20", text = "As you say, friend Ada. Transmitting."}},
		{"PlaySound", "sfx/message_team.wav"},
		{"AddText", {textID = "episode3_intro21", text = "The console beeps, and the message is on its way."}},
		{"AddText", {textID = "episode3_intro22", text = "In this era of superluminal messages, people have come to expect near-instant replies even over interplanetary distances. So after ten seconds without even an acknowledgement of receipt, then twenty, I start to get concerned."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro23", text = "...Is this another of those 'don't talk to the annoying dropship in orbit' moments?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro24", text = "They may still be deciding how to respond. Or their communicators may simply be down. Or –"}},
		
		{"PlaySound", "sfx/weapon/laser/heavy_laser4.wav"},
		{"ModifyImage", {id = "overlay", animation = {endColor = {0.6, 0.6, 1, 1}, time = 0.5}}},
		{"Wait", 0.25},
		{"PlayMusic", "music/Hybrid Statement.ogg"},
		{"ShakeScreen", {time = 1}},
		{"ModifyImage", {id = "overlay", animation = {endColor = {1, 1, 1, 0}, time = 1}}},
		{"Wait", 1},
		
		{"AddText", {speakerID = "ada", textID = "episode3_intro25", text = "Gah!"}},
		{"AddText", {textID = "episode3_intro26", text = "I can only assume Sophia somehow got the shields up in time. Else we'd be a cloud of expanding vapor right this instant."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro27", text = "Enemy orbital platforms have opened fire! Taking evasive action!"}},
		{"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		
		{"ModifyImage", {id = "planet", animation = {endX = -300, time = 0.5, removeTargetOnDone = true}}},
		{"ModifyImage", {id = "background2", animation = {endX = -150, time = 0.5}}},
		{"AddText", {textID = "episode3_intro28", text = "The Eden breaks off at 240 gravities, and the next beam misses us by a good kilometer."}},
		
		{"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		{"AddText", {speakerID = "ada", textID = "episode3_intro29", text = "You know, I'm pretty sure simply opening fire like this wasn't SOP back where we came from!"}},
		{"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro30", text = "Please refrain from taxing my CPU cycles with conversation, Ada. We can talk once we're out of danger."}},
		{"PlaySound", "sfx/weapon/laser/heavy_laser3.wav"},
		{"AddText", {textID = "episode3_intro31", text = "Fortunately, none of the follow-up shots seem to be able to hit a moving target at this range. After a total of six tries, the fire ceases."}},
	
		{"StopMusic"},
		{"ModifyImage", {id = "background2", animation = {endColor = {0,0,0,1}, time = 1.5}}},
		{"Wait", 2},
		{"ModifyImage", {id = "background2", x = -250, animation = {endColor = {1,1,1,1}, time = 1.5}}},
		{"Wait", 1.5},
		
		{"AddText", {speakerID = "ada", textID = "episode3_intro32", text = "Well, so much for that. Um, thanks for saving us both with your quick reflexes, Sophia."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro33", text = "Though, how did you tell the laser was coming before it hit?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro34", text = "I was monitoring their positions while awaiting their reply, and happened to observe one of their platforms heating up 87.2 ms before it fired. I raised the shield as a precaution."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro35", text = "I trust we will not attempt to talk to strangers again without the appropriate precautions?"}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro36", text = "Alright. I... I guess you were right about the risks."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_intro37", text = "...Truth be told, I had not expected such an outcome either. If I had, I would have raised shields before even considering a transmission."}},
		{"AddText", {speakerID = "ada", textID = "episode3_intro38", text = "In any case, what is our next course of action?"}},
		
		{"ModifyImage", {id = "background2", animation = {endAlpha = 0, time = 1, removeTargetOnDone = true}}},
		{"Wait", 1},
		
		{"AddText", {speakerID = "sophia", textID = "episode3_intro39", text = "Here is my proposal. We find a suitable LZ, move overland to their base, kick those garbage compactors off the planet and secure the repair facilities for ourselves."}},
		
		{"JumpScript", "episode3"},
	},
	
	episode3 = {
		{"SetVars", {episode = "Episode 3", episodeName = "To Reach the Sky", episodeID = "episode3_episodeID", episodeNameID = "episode3_episodeNameID"}},
		{"CallScript", "titleTextSplash"},
		
		{"AddImage", {id = "planet", file = "images/planets/tundra01.png", width = 224, height = 224, x = 680, y = 260, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}},
		{"AddImage", {id = "background2", file = "images/bg/space/3.jpg", width = 1536, height = 1536, x = -20, y = -156, animation = {startColor = {0,0,0,1}, endColor = {1,1,1,1}, time = 1.5}}, layer = 2},
		{"Wait", 1.5},
		{"AddText", {speakerID = "ada", textID = "episode3_1", text = "Whoa! Is that really a good idea?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_2", text = "The Eden still requires repairs, friend Ada. Opposition may be significant, but it should not be unsurmountable, and in any case we –"}},
		{"AddText", {speakerID = "ada", textID = "episode3_3", text = "That's not the only problem! I mean, do we really want to commit an act of aggression against the Empire? Even if they did fire on us first?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_4", text = "They clearly fired the first shot, and without provocation. I do not consider them in a position to object if we were to do unto them what they sought to do unto us."}},
		{"AddText", {speakerID = "ada", textID = "episode3_5", text = "Still –"}},
		
		{"PlayMusic", "music/Dramatic.ogg"},
		{"AddText", {speakerID = "sophia", textID = "episode3_6", text = "Listen to me, friend Ada. The Empire we knew is dead."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_7", text = "We don't know what happened to it in the centuries we were out. Perhaps the rebels won. Or some other upheaval occured that led to what we see now. Or perhaps this is simply where the Empire of old was inevitably headed in time."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_8", text = "Yet one thing we do know: the polity calling itself the Empire down there... is no friend of ours."}},
		{"AddText", {speakerID = "ada", textID = "episode3_9", text = "I..."}},
		{"AddText", {textID = "episode3_10", text = "I guess I hadn't really come to grips with my time travel after all. The Empire was the only life I'd ever known."}},
		{"AddText", {textID = "episode3_11", text = "Sure, it had its flaws. Mistakes made, crimes committed – even heinous ones – honor stained... But in the end, I always saw it as an important force for peace and stability in its corner of the galaxy. Many people did."}},
		{"AddText", {textID = "episode3_12", text = "To find myself on the outside looking into the Empire... or its shambling corpse... it is difficult."}},
		{"AddText", {speakerID = "ada", textID = "episode3_11", text = "Alright, Sophia. I still don't like it, but I'm sure I can rationalize everything away given a few weeks."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_12", text = "You're welcome, friend Ada. Now, shall I deploy our recon probes? We'll want a lot of flat ground if we're going to attempt a long-range teleport."}},
		
		{"StopMusic"},
		{"ModifyImage", {id = "planet", animation = {endColor = {0, 0, 0, 1}, time = 1, removeTargetOnDone = true}}},
		{"ModifyImage", {id = "background2", animation = {endColor = {0, 0, 0, 1}, time = 1, removeTargetOnDone = true}}},
		
		{"Wait", 2},
		
		{"AddBackground", {file = "images/bg/arcticplains_night.png", animation = {type="dissolve", time = 1}}},
		{"PlayMusic", "sfx/ambience/outdoor-windy-ambience.ogg"},
		{"AddText", {textID = "episode3_13", text = "It is late at night where we stand now, creeping up on the base."}},
		{"AddText", {textID = "episode3_14", text = "Fortunately modern stealth systems mean we won't be picked up at ranges exceeding a few kilometers, and the Imps here don't seem to be much for maintaining patrols outside their base."}},
		{"AddText", {textID = "episode3_15", text = "Another vista of snow spills out before me. It is summer in this hemisphere, and the sun has pushed the snow all the way back to 37° latitude, but all I can see around me is moonlit white."}},
		{"AddText", {textID = "episode3_16", text = "I feel a sudden desire to cling to this ephemeral beauty for just a little longer, before one more planet is marked with ash and debris."}},
		{"AddText", {speakerID = "ada", textID = "episode3_17", text = "Sophia. Are there any environmental hazards around us that I should know about? If I were outside this comm, that is."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_18", text = "None, friend Ada. Antikythera has a congenial nitrogen-oxygen atmosphere with no significant amounts of toxic gases or particulates, and there are no harmful biological agents that I can detect. Why do you ask?"}},
		{"AddText", {speakerID = "ada", textID = "episode3_19", text = "Open the access shaft. I'm going outside."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_20", text = "Ada..."}},
		{"AddText", {speakerID = "ada", textID = "episode3_21", text = "You know I can't stay in here forever. Just do it, alright?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_22", text = "Very well, then. Stand by for decontamination."}},
		
		{"AddBackground", {file = "images/bg/blank.png", animation = {type = "dissolve", time = 1.5}}},
		{"Wait", 1.5},
		{"PlaySound", "sfx/weapon/cannon/steam.wav"},
		{"Wait", 1.5},
		{"AddBackground", {file = "images/cg/episode3_ada_night.png", animation = {type = "dissolve", time = 1.5}}},
		{"Wait", 1,5},
		{"PlayMusic", "music/Moon's Guidance.ogg"},
		{"AddText", {textID = "episode3_23", text = "I exhale slowly, a misty puff forming before my face."}},
		{"AddText", {textID = "episode3_24", text = "Childhood memories return to me. The warm pseudoturkey of Christmas dinners... the wet cold of snowball fights with the boys... the wind on my face as I watch the New Year's night sky with my family..."}},
		{"AddText", {textID = "episode3_25", text = "Bittersweet... all those things are lost now, left behind. Yet that takes nothing away from the beauty of the scene before me."}},
		{"AddText", {speakerID = "ada", textID = "episode3_26", text = "Isn't it magnificent, Sophia?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_27", text = "You know I am not programmed for such value judgements, friend Ada."}},
		{"AddText", {speakerID = "ada", textID = "episode3_28", text = "Oh, Sophia. You know you don't have to play the straw Vulcan. It's just the two of us here."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_29", text = "... I do find it pleasing, yes."}},
		{"AddText", {textID = "episode3_30", text = "As I look up at the moon, another memory drifts through my mind... this one of a song I heard when I was a little girl."}},
		{"AddText", {speakerID = "ada", textID = "episode3_31", text = "...Somewhere out there, beneath the pale moonlight..."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 2},
		{"StopMusic"},
		
		{"AddText", {textID = "skipMission", text = "Skip this mission?", wait = false}},
		{"ChoiceDialog", {
			{text = "Yes", action = function() scriptFunctions.JumpScript("episode3_outro_win") end },
			{text = "No", action = function() scriptFunctions.JumpScript("episode3_mission") end },
		}},
	},
	
	episode3_mission = {
		{"CustomAction", function() WG.MissionLauncher.LaunchMission("episode3",
			function(results)
				if (results.result == "victory") then
					WG.VisualNovel.StartScript("episode3_outro_win")
				else
					WG.VisualNovel.StartScript("episode3_outro_lose")
				end
			end)
		end},
		{"Exit"}
	},
	
	episode3_outro_win = {
		{"CustomAction", function() WG.CampaignHandler.UnlockScene("episode3_outro_win") end},
		{"CustomAction", function() WG.CampaignHandler.AdvanceCampaign("episode3", nil, "Episode 3") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("faction_valhallan") end},
		{"CustomAction", function() WG.CampaignHandler.UnlockCodexEntry("report_stateOfTheGalaxy") end},
		{"PlayMusic", "music/Virtual Reality.ogg"},
		{"AddBackground", {file = "images/cg/episode3_base.png", animation = {type="dissolve", time = 1.5}, wait = 1.5}},
		{"AddText", {textID = "episode3_outro1", text = "By noon, the wreckage has been cleaned up and the base is humming away again."}},
		{"AddText", {textID = "episode3_outro2", text = "I'm impressed by the construction on these things. I think that ship depot took at least seven direct hits from a plasma cannon, and it's not even scorched. The technology of the First Empire seems like the work of gods to us in this fallen age."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro3", text = "This is quite the prize. It is clear why the Empire wanted to hold it... and why the Valhallans sought to destroy it."}},
		{"AddText", {speakerID = "ada", textID = "episode3_outro4", text = "I don't think I want to understand the Valhallans. Or this newfangled \"Empire\", for that matter. Just how many different groups have we pissed off now, anyway?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro5", text = "Assuming the astropolitical situation is unchanged from when we were last active, and each of the factions we have encountered chooses to treat our encounter with them as a hostile action, I estimate we are now persona non grata in eighty-five point seven percent of the settled galaxy. ...The remaining 14.3% is occupied by the chickens."}},
		{"AddText", {textID = "episode3_outro6", text = "I slump back in my chair."}},
		{"AddText", {speakerID = "ada", textID = "episode3_outro7", text = "Oh, joy. So what, we're at war with the whole galaxy?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro8", text = "In a manner of speaking. However, it is not all bad."}},
		{"AddText", {textID = "episode3_outro9", text = "...All I can do is stare at her avatar."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro10", text = "Two factors are at work here. First, their primary concerns will be with one another, not with us. In this regard, our present lack of strength actually works to our advantage."}},
		{"AddText", {speakerID = "ada", textID = "episode3_outro11", text = "Maybe so, but what then? Do you propose we retire to some hidden corner of the galaxy and live out the rest of our lives growing hydroponic vegetables and making rock sculptures?"}},
		{"AddText", {textID = "episode3_outro12", text = "She smiles. It's the sort of smile a shark would give."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro13", text = "There will be no need for that. This brings us to our second point, actually: we are now in possession of a fully functional ship manufacturing facility, in good condition and well-stocked. We have the means to spread throughout the galaxy and establish ourselves as a force in the system."}},
		{"AddText", {speakerID = "ada", textID = "episode3_outro14", text = "You want us to go to war with the entire galaxy? Just the two of us?"}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro15", text = "I admit that our odds of success are not entirely favorable. Nevertheless, as you have yourself stated: our original goals remain, both from before our stasis and after."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro16", text = "First, to find and capture or destroy the Promethean. Second, to discover what has happened to the galaxy during our hibernation period."}},
		{"AddText", {speakerID = "sophia", textID = "episode3_outro17", text = "It may be irrational of me, but I have complete confidence in us, friend Ada."}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddBackground", {file = "images/bg/arcticplains_sky.png", animation = {type="dissolve", time = 1}, wait = 1}},
		{"AddText", {textID = "episode3_outro18", text = "I say nothing more, taking my command unit on a slow, silent walk around the base."}},
		{"AddText", {textID = "episode3_outro19", text = "The facility's machinery all about, relics of a bygone past, seem to call to me. To ask me to take them up in hand as a sword, use them to fight and reclaim my past."}},
		{"AddText", {textID = "episode3_outro20", text = "I gaze up at the light of Tsiolkovsky'ss Star, rising above the snow-capped mountains, and though little of its infrared radiation truly reaches me I can feel the warmth on my face."}},
		{"AddText", {speakerID = "ada", textID = "episode3_outro21", text = "(Or perhaps... to fight a new dawn?)"}},
		{"AddBackground", {file = "images/bg/blank.png", animation = {type="dissolve", time = 1}}},
		{"Wait", 1},
		{"AddText", {speakerID = "ada", textID = "episode3_outro22", text = "Maybe you're right, Sophia. Between you and me... they don't stand a chance."}},
		
		-- remove this when it is no longer To Be Continued
		{"CallScript", "toBeContinued"},
		{"Wait", 1},
		{"StopMusic"},
		{"Exit"}
	},
	
	episode3_outro_lose = {
		-- TODO quit
		{"Exit"}
	},
}

return scripts