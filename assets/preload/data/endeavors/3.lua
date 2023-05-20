function onCreatePost()
	makeLuaText("scoretext", "Fun is infinite", 1000, 140, 630)
	setTextAlignment("scoretext", 'center')
	setTextSize("scoretext", 30)
	setTextFont("scoretext", "sonic-1-hud-font.ttf");
	setTextColor('scoreTxt', '090973')
    addLuaText("scoretext")
end