	function onCreate()
	-- background shit

	makeLuaSprite('skysonicexe', 'exe/exestage/skysonicexe', -450, -300);
	setScrollFactor('skysonicexe', 0.7, 0.9);
	scaleObject('skysonicexe', 1.3, 1.3);

	makeLuaSprite('TreesLeft', 'exe/exestage/TreesLeft', -450, -300);
	setScrollFactor('TreesLeft', 0.8, 0.8);
	scaleObject('TreesLeft', 1.3, 1.3);

	makeLuaSprite('OuterBush', 'exe/exestage/OuterBush', -450, -300);
	setScrollFactor('OuterBush', 1.0, 1.0);
	scaleObject('OuterBush', 1.3, 1.3);

	makeLuaSprite('Grass', 'exe/exestage/Grass', -450, -300);
	setScrollFactor('Grass', 1.0, 1.0);
	scaleObject('Grass', 1.3, 1.3);

	makeLuaSprite('TreesFG', 'exe/exestage/TreesFG', -450, -300);
	setScrollFactor('TreesFG', 0.8, 0.9);
	scaleObject('TreesFG', 1.3, 1.3);

	makeLuaSprite('DeadEgg', 'exe/exestage/DeadEgg', -183, 520);
	setScrollFactor('DeadEgg', 1.0, 1.0);
	scaleObject('DeadEgg', 1.3, 1.3);

	makeLuaSprite('DeadTailz', 'exe/exestage/DeadTailz', -200, -190);
	setScrollFactor('DeadTailz', 1.0, 1.0);
	scaleObject('DeadTailz', 1.3, 1.3);

	makeLuaSprite('DeadTailz1', 'exe/exestage/DeadTailz1', -300, 435);
	setScrollFactor('DeadTailz1', 1.0, 1.0);
	scaleObject('DeadTailz1', 1.3, 1.3);

	makeLuaSprite('DeadTailz2', 'exe/exestage/DeadTailz2', -20, 700);
	setScrollFactor('DeadTailz2', 1.0, 1.0);
	scaleObject('DeadTailz2', 1.3, 1.3);

	makeLuaSprite('DeadKnux', 'exe/exestage/DeadKnux', 1400, 520);
	setScrollFactor('DeadKnux', 1.0, 1.0);
	scaleObject('DeadKnux', 1.3, 1.3);
	

	addLuaSprite('skysonicexe', false);
	addLuaSprite('TreesLeft', false);
	addLuaSprite('OuterBush', false);
	addLuaSprite('Grass', false);
	addLuaSprite('DeadKnux', false);
	addLuaSprite('DeadTailz1', false);
	addLuaSprite('DeadEgg', false);
	addLuaSprite('DeadTailz', true);
	addLuaSprite('DeadTailz2', true);
	addLuaSprite('TreesFG', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end