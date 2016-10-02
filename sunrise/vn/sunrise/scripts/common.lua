local scripts = {
	titleTextSplash = {
		{"AddTextAsImage", {id = "episodeTitle1", textID = "{{episodeID}}", text = "{{episode}}", size = 30, x = "0", y = "0.35", width = "50%",
			align = "right", autosize = false, animation = {startAlpha = 0, endAlpha = 1, time = 2}}},
		{"AddTextAsImage", {id = "episodeTitle2", textID = "{{episodeTitleID}}", text = "{{episodeName}}", size = 36, x = "0.5", y = "0.55", width = "50%",
			align = "left", autosize = false, animation = {startAlpha = 0, endAlpha = 1, time = 2}}},
		{"Wait", 30},
		{"ModifyImage", {id = "episodeTitle1", animation = {startAlpha = 1, endAlpha = 0, time = 2, removeTargetOnDone = true}}},
		{"ModifyImage", {id = "episodeTitle2", animation = {startAlpha = 1, endAlpha = 0, time = 2, removeTargetOnDone = true}}},
		{"Wait", 2},
	},
	
	timeTextSplash = {
		{"AddTextAsImage", {id = "timeText", textID = "{{timeTextID}}", text = "{{timeText}}", size = 32, x = 0, y = "0.45",
			width = "100%", align = "center", valign = "center", autosize = false, animation = {startAlpha = 0, endAlpha = 1, time = 2}}},
		{"Wait", 4},
		{"ModifyImage", {id = "timeText", animation = {startAlpha = 1, endAlpha = 0, time = 2, removeTargetOnDone = true}}},
		{"Wait", 2},
	},
	
	prepareForBattle = {
		{"AddTextAsImage", {id = "timeText", textID = "prepareForBattle", text = "PREPARE FOR BATTLE", size = 32, x = 0, y = "0.45", color = {1, 0.2, 0.2, 1},
			width = "100%", align = "center", valign = "center", autosize = false, animation = {startAlpha = 0, endAlpha = 1, time = 0.5}}},
		{"Wait"},
		{"ModifyImage", {id = "timeText", animation = {startAlpha = 1, endAlpha = 0, time = 1, removeTargetOnDone = true}}},
		{"Wait", 1},
	},
	
	toBeContinued = {
		{"AddTextAsImage", {id = "timeText", textID = "toBeContinued", text = "To be continued...", size = 32, x = 0, y = "0.45",
			width = "100%", align = "center", valign = "center", autosize = false, animation = {startAlpha = 0, endAlpha = 1, time = 1}}},
		{"Wait", 2},
		{"ModifyImage", {id = "timeText", animation = {startAlpha = 1, endAlpha = 0, time = 1, removeTargetOnDone = true}}},
		{"Wait", 1},
		{"StopMusic"},
		{"Exit"}
	}
}

return scripts