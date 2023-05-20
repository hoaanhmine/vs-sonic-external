function onCreatePost()
	setProperty('gf.visible', false);
end

function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-slash-death')

	makeLuaSprite('slashback', 'exe/slash/slashBackground', -560, -400);
	scaleObject('slashback', 1.5, 1.5);
	addLuaSprite('slashback', false);
	setProperty('slashback.antialiasing', false)
	

	makeAnimatedLuaSprite('slashcrack', 'exe/slash/slashCracks', -560, -200);
	addAnimationByPrefix('slashcrack', 'idle', 'sl4sh background crack eyes', 24, true);
	scaleObject('slashcrack', 7, 7);
	addLuaSprite('slashcrack', false);
	setProperty('slashcrack.antialiasing', false)

	makeLuaSprite('slashfloor', 'exe/slash/slashFloor', -560, -200);
	scaleObject('slashfloor', 8, 8);
	addLuaSprite('slashfloor', false);
	setProperty('slashfloor.antialiasing', false)

	makeAnimatedLuaSprite('lava', 'exe/slash/slashLava', -560, -100); --set to -100
	addAnimationByPrefix('lava', 'blub', 'sl4sh background lava', 24, true);
	scaleObject('lava', 8, 8);
	addLuaSprite('lava', true);
	setProperty('lava.visible', false);
	setProperty('lava.antialiasing', false)


	-- pov shit below

	makeLuaSprite('slashPOVback', 'exe/slash/pov/povyoufuckingsuckatthegame', -600, -400);
	scaleObject('slashPOVback', 8, 8);
	addLuaSprite('slashPOVback', false);
	setProperty('slashPOVback.visible', false)
	setProperty('slashPOVback.antialiasing', false)

	makeAnimatedLuaSprite('slashPOVlava', 'exe/slash/pov/pov_lava', -500, -400);
	addAnimationByPrefix('slashPOVlava', 'idlePOV', 'POV lava', 24, true);
	scaleObject('slashPOVlava', 8, 8);
	addLuaSprite('slashPOVlava', false);
	setProperty('slashPOVlava.visible', false)
	setProperty('slashPOVlava.antialiasing', false)

	makeLuaSprite('slashPOVeyes', 'exe/slash/pov/povslashisgonnagetcha', -600, -220);
	scaleObject('slashPOVeyes', 7, 7);
	addLuaSprite('slashPOVeyes', false);
	setProperty('slashPOVeyes.visible', false)
	setProperty('slashPOVeyes.antialiasing', false)

end

function onUpdate()
	if curStep == 383 then
		setProperty('lava.visible', true)
		doTweenY('lavaMove', 'lava', -420, 1, 'quadOut');
	end

	if curStep == 1023 then
		setProperty('dad.visible', true)
		setProperty('boyfriend.visible', false)
		setProperty('slashPOVback.visible', true)
		setProperty('slashPOVlava.visible', true)
		setProperty('lava.visible', false)
		setProperty('slashPOVeyes.visible', true)
	end
end