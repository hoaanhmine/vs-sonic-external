function onCreate()

	makeLuaSprite('bg', 'exe/starved/background', 0, 0);
	setProperty('bg.alpha',1);

	makeLuaSprite('bg2', 'exe/starved/furnace-open', 0, 0);
	setProperty('bg2.alpha',0);

	makeAnimatedLuaSprite('sonic', 'exe/starved/scream2', 280, 125);
	addAnimationByPrefix('sonic', 'Idle', 'BurnedSonic', 24, true)
	scaleObject('sonic', 1, 1);
	setProperty('sonic.alpha',0);

	makeLuaSprite('cahins', 'exe/starved/chains', 0, 0);
	setProperty('cahins.alpha',1);

	makeAnimatedLuaSprite('fire', 'exe/starved/cieloburn', 30, -700);
	addAnimationByPrefix('fire', 'cieloburn', 'cieloburn', 24, true)
	scaleObject('fire', 3, 3);
	setProperty('fire.alpha',0);

	addLuaSprite('bg2', false);
	addLuaSprite('sonic',false)
	addLuaSprite('bg', false);
	addLuaSprite('cahins', false);
	addLuaSprite('fire', false);

	close(true);

end