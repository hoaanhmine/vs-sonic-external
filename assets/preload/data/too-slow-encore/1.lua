local curWord = 1
local wordstuff = { 
	{
		startStep = 515,
		endStep = 527,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004", 
		text = "Do you wanna play with me?"
	},
	{
		startStep = 656,
		endStep = 679,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "Want to try again?"
	},
	{
		startStep = 879,
		endStep = 894,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "YOU'RE IN MY WORLD NOW!!!"
	},
	{
		startStep = 1071,
		endStep = 1086,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "*laughter*"
	},
	{
		startStep = 1094,
		endStep = 1124,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "So many Souls to play with..."
	},
	{
	startStep = 1136,
		endStep = 1151,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "So little time..."
	},
	{
	startStep = 1167,
		endStep = 1175,
		speaker = "Sonic.EXE",
		speakerColor = "FF0004",
		text = "Wouldnt you agree?"
	},
	{
	startStep = 1183,
		endStep = 1186,
		speaker = "Boyfriend",
		speakerColor = "00FBFF",
		text = "Yeah!."
	}
	
}

function onCreatePost()
	makeLuaSprite('wordbox', '', 0, 500)
	makeGraphic('wordbox', 500, 125, '000000')
	addLuaSprite('wordbox', true)
	screenCenter('wordbox', 'x')
	setProperty('wordbox.alpha', 0)
	setObjectCamera('wordbox', 'other');
	setObjectCamera('wordbox', 'camHUD')

	makeLuaText('speaker', '', 500, 0, 500)
	screenCenter('speaker', 'x')
	setTextBorder('speaker', 3, '000000')
	addLuaText('speaker', true)
	setTextSize('speaker', 45)
	setObjectCamera('speaker', 'other');
	setTextAlignment('speaker')

	makeLuaText('text', '', 490, 0, 560)
	screenCenter('text', 'x')
	setTextBorder('text', 2, '000000')
	addLuaText('text', true)
	setTextSize('text', 30)
	setObjectCamera('text', 'other');
	setTextAlignment('text')
end
function onStepHit()
	if curStep == wordstuff[curWord].startStep then
		doTweenAlpha('wordboxIn', 'wordbox', 0.7, 0.1, 'linear')
		doTweenAlpha('speakerIn', 'speaker', 1, 0.1, 'linear')
		doTweenAlpha('textIn', 'text', 1, 0.1, 'linear')
		textThing('wordbox')
		textThing('speaker')
		textThing('text')
		setTextString('speaker', string.upper(wordstuff[curWord].speaker))
		setTextString('text', wordstuff[curWord].text)
		setTextColor('speaker', wordstuff[curWord].speakerColor)
	elseif curStep == wordstuff[curWord].endStep then
		doTweenAlpha('wordboxOut', 'wordbox', 0, 0.1, 'linear')
		doTweenAlpha('speakerOut', 'speaker', 0, 0.1, 'linear')
		doTweenAlpha('textOut', 'text', 0, 0.1, 'linear')
		textThing('wordbox')
		textThing('speaker')
		textThing('text')
		curWord = curWord + 1
	end
end
function textThing(tag)
	setProperty(tag..'.y', getProperty(tag..'.y')-10)
	doTweenY(tag..'Popup', tag, getProperty(tag..'.y')+10, 0.1, 'linear')
end