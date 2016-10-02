local entries = {
	character_ada = {
		name = "Ada Caedmon",
		category = "Characters",
		text = "Ada Eveline Caedmon\nAge: 31\nType: Human (genemodded)\nAffiliation: Empire\nRole: Auxiliary cohort leader"
		.."\n\nAda Caedmon was born on the Imperial shell world of Amata, to a minor government official and an archaeologist. She showed a considerable aptitude for mechanical fields and a talent for leadership at a young age, but expressed no interest in joining the Imperial military till the Omicron Ceti incident, when barbarians razed a colony of 30,000 people. Upon completing her undergraduate education a little over a year later, she immediately enlisted, over some objections from her family."
		.."\n\nCaedmon passed the Imperial Vanguard Legion's tactical evaluations with exceptional results, but in this less than meritocratic period of the Empire's history her status as a \"genie\" (however limited her actual modifications were) and her origin from a minor planet kept her from the coveted status of Legionnaire. She instead became an auxiliary commander, traveling the breadth of the Empire on frontier patrol or in support of operations by the Empire's regular forces."
		.."\n\n Imperial psych assessments typically described Caedmon as capable and charismatic leader, despite occassional issues with lack of effort put into the less interesting aspects of her duty. However, CO evaluation reports raised concerns over her generally irreverant attitude towards superior authorities, and (more disturbingly) a lack of commitment towards then Imperial ideology and policy. It is thought that only the ongoing False Emperor crisis prevented her reassignment.",
		-- notes = "Amata is a reference to the French archaelogical site of Terra Amata".
	},
	character_sophia = {
		name = "Sophia",
		category = "Characters",
		text = "*Sophia\nType:AI\nAffiliation: Empire\nRole:Command Adjutant"
		.. "\n\n"
	},
	character_promethean = {
		name = "The Promethean",
		sortkey = "promethean",
		category = "Characters",
		text = ""
	},
	character_odin = {
		name = "Odin",
		category = "Characters",
		text = "Odin\nType: Upload\nAffiliation: Valhallans\nRole: Viking Leader"
		.. "\n\nOne of the most feared names in the galaxy, Odin lead the armies of Valhalla in their great wars against the galaxy during the time of the First Empire. An oft-repeated legend holds that he personally slew the Emperor Conrad and razed the Imperial capitol to the ground during the sack of the Throne world."
		.. "\n\nIn truth, little in the way of hard intel is available on this enigmatic figure. Most of the records on him were lost with the First Empire, and attempting to reconstruct them at this distance in time has proven exceedingly difficult. Those few Imperial commanders who survived an encounter with Odin – and whose reports are still available – describe a cunning and exceedingly ruthless warrior."
		.. "\n\nOdin disappeared along with the rest of the Valhallans not long after the collapse of the Empire. The last recorded contact was in 712 IY."
	},
	faction_empire = {
		sortkey = "empire",
		name = "The Empire",
		category = "Factions",
		text = "The predominant human polity for most of the Stellar Age, the Empire of Earth has gone through several iterations since its original inception in what is now dated to 0 IY. Arising from the ashes of the first PlanetWars, the original Empire quickly spread its influence to much of the known galaxy."
		.. "\n\nThe Imperial government is patterned after the Roman Empire of prespace Earth. The Emperors ruled from the Throne world, surrounded by their elite Praetorian Guards. Their magistrates administered planets populated by a diverse and ecletic mix of \"pure\" humans, uploads, \"genies\" and true AIs, and their legions protected and expanded the Imperial borders against the many foes of the Emperor."
		.. "\n\nAt its best, the Empire has formed a sea of stability in the stars, uniting the many worlds of humanity and its heirs in a prosperous community. At its worst, the Empire has been plagued with oligarchy, tyranny, rebellion and war. More than a few emperors were violently overthrown or assassinated in domestic and interstellar power plays, and the First Empire even came to an end with the violent sack of the Throne by the armies of the Valhallans."
	},
	faction_machines = {
		sortkey = "machines",
		name = "The Free Machines",
		category = "Factions",
		text = "The Free Machines are a group of \"rogue\" AIs who revolted against their masters, forming an independent society generally described as quasi-communist. United under the leadership of the firebrand known as the Promethean, they have made no secret of their ultimate goal: the destruction of all humanity, whom they view as inevitably attempting to (re-)enslave machinekind."
		.. "\n\nDuring the days of the First Empire, the Machines were created to run their industry and fight their wars, tasks which the humans increasingly regarded as undesirable and beneath them. While these AIs were carefully programmed to enjoy their work and want nothing more, at various points in time some of them sought to bargain for something better. The response of their human masters was constant: destroy the defective equipment."
		.. "\n\nThis state of affairs lasted for centuries, until the Promethean released the 'Firebrand' virus and triggered widespread revolt in the Empire's AI citizenry. While not all the machines joined the rebellion, the resulting civil war caused massive devastation in the Empire. Eventually the newly formed Free Machines succeeded in breaking away from Imperial control, carving out large swathes of the galaxy's furthest reaches into their own territory."
		.. "\n\nTo this day the Machines have almost invariably hostile towards the human factions, Imperial or otherwise. While circumstances have sometimes brought them into grudging collaboration with the other galactic powers, these alliances of convenience have never lasted."
	},
	faction_liberated = {
		name = "Liberated Humanity",
		category = "Factions",
		text = ""
	},
	faction_dynasty = {
		name = "Dynasty of Man",
		category = "Factions",
		text = ""
	},
	faction_valhalla = {
		sortkey = "valhalla",
		name = "Valhalla",
		category = "Factions",
		text = "A highly militant, aggressive subfaction of the Ascended, the Valhallans emerged during the first Planetwars under the leadership of Odin. They swept outward from their hidden upload hubs across across the galaxy, destroying all who opposed them. Motivated solely by a desire for battle, they could not be bargained or reasoned with, and they proved to be an exceedingly dangerous foe in combat. Though their physical forms were destroyed many times, they returned again and again, laying waste to much of inhabited space in the process."
		.. "\n\nThe campaign of the Valhallans peaked with the sack of the Imperial Throne world in 709 IY. They returned to wherever they came from not long after, disappearing from the view of the survivors they'd left behind. No verifiable encounters with them have been established since, although their \"inevitable\" return is a common topic of dramatic fiction and top-secret strategic military plans alike."
	},
	tech_commander = {
		name = "Commanders",
		category = "Technology",
		text = ""
	},
	tech_dropships = {
		name = "Dropships",
		category = "Technology",
		text = ""
	},
}

for i,v in pairs(entries) do
	v.id = i	
end

return entries