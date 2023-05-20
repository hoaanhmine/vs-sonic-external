function onCreate()
	addCharacterToList('FrontViewSl4sh', 'dad')
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-slash-death');

	makeLuaSprite('black', 'makeGraphicsucks', 0, 0);
	makeLuaSprite('introcircle', 'CircleB4CKSL4SH', 900, 0);
	makeLuaSprite('introtext', 'TextB4CKSL4SH', -900, 0);
	makeLuaSprite('bg', 'exe/slash/wall', -950, 0)
	makeLuaSprite('cracks', 'exe/slash/lines', -950, 0)
	makeLuaSprite('ground', 'exe/slash/ground', -950, 0)
	makeAnimatedLuaSprite('lava', 'exe/slash/fp/lava', -950, -300)
	makeAnimatedLuaSprite('lava2', 'exe/slash/fp/lava', -950, -500)
	makeAnimatedLuaSprite('bush', 'exe/slash/bush', 0, 0)
	makeAnimatedLuaSprite('bush2', 'exe/slash/bush', -3800, 0)
	makeLuaSprite('fpbg2', 'exe/slash/fp/eyes-fps', 0, 0)
	makeLuaSprite('fpbg', 'exe/slash/fp/povbg', -950, -500)

	addAnimationByPrefix('lava', 'idle', 'lava anim', 24, true)
	addAnimationByPrefix('lava2', 'idle', 'lava anim', 24, true)
	addAnimationByPrefix('bush', 'idle', 'bush', 24, true)
	addAnimationByPrefix('bush2', 'idle', 'bush', 24, true)

	makeLuaSprite('Majin2', 'exe/sonicUI/Majin2', -300, -70);
	addLuaSprite('Majin2', false);
	scaleObject('Majin2', 1.78, 1.68) 
	setObjectCamera('Majin2', 'other');
	setBlendMode('Majin2', 'MULTIPLY')

	setProperty('bg.antialiasing', false)
	setProperty('cracks.antialiasing', false)
	setProperty('ground.antialiasing', false)
	setProperty('lava.antialiasing', false)
	setProperty('fpbg2.antialiasing', false)
	setProperty('fpbg.antialiasing', false)
	setProperty('lava2.antialiasing', false)
	setProperty('lava2.visible', false)
	setProperty('fpbg2.visible', false)
	setProperty('fpbg.visible', false)
	setProperty('bush.antialiasing', false)
	setProperty('bush2.antialiasing', false)

	setObjectCamera('black', 'other')
	setObjectCamera('introcircle', 'other')
	setObjectCamera('introtext', 'other')

	scaleObject('black', 12, 12)
	scaleObject('bg', 8, 8)
	scaleObject('cracks', 8, 8)
	scaleObject('ground', 8, 8)
	scaleObject('fpbg', 8, 8)
	scaleObject('lava', 8, 8)
	scaleObject('lava2', 8, 8)
	scaleObject('bush', 8, 8)
	scaleObject('bush2', 8, 8)


	addLuaSprite('bg', false)
	addLuaSprite('cracks', false)
	addLuaSprite('bush', false)
	addLuaSprite('bush2', false)
	addLuaSprite('ground', false)
	addLuaSprite('lava', false)
	addLuaSprite('fpbg', false)
	addLuaSprite('lava2', false)
	addLuaSprite('black', true)
	addLuaSprite('introcircle', true)
	addLuaSprite('introtext', true)
end

function onStartCountdown()
	doTweenX('circleTween', 'introcircle', -50, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 90, 2, 'quintOut')
	runTimer('2',2)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == '2' then
		doTweenAlpha('graphicAlpha', 'black', 0, 0.4, 'linear');
		doTweenAlpha('circleAlpha', 'introcircle', 0, 0.4, 'linear');
		doTweenAlpha('textAlpha', 'introtext', 0, 0.4, 'linear');
		runTimer('gone',2)
	end
	if tag == 'gone' then
		removeLuaSprite('introtext', true)
		removeLuaSprite('introcircle', true)
		removeLuaSprite('black', true)
	end
end

function onStepHit()

	if getProperty('curStep') == 1023 then
		setProperty('boyfriend.visible', false)
		setProperty('bg.visible', false)
		setProperty('cracks.visible', false)
		setProperty('bush.visible', false)
		setProperty('bush2.visible', false)
		setProperty('ground.visible', false)
		setProperty('lava.visible', false)
		setProperty('fpbg2.visible', false)
		setProperty('fpbg.visible', true)
		setProperty('lava2.visible', true)
	end	

	if getProperty('curStep') == 2348 then
		setProperty('dad.visible', false)
		setProperty('fpbg.visible', false)
		setProperty('lava2.visible', false)
	end
end