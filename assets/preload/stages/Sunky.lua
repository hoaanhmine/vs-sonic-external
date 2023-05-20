function onCreate()
 
    makeLuaSprite('SunkBG', 'exe/sunky/SunkBG', -100, 0);
	makeLuaSprite('stage', 'exe/sunky/stage', -200, -130);
	makeLuaSprite('ratio', 'exe/sunky/4_3ratio', 0, 0);
	makeLuaSprite('ball', 'exe/sunky/ball', 450, -50);
	
	setObjectCamera('ratio', 'other');
	setObjectOrder('ratio', getObjectOrder('blackbox')-1)
	
	addLuaSprite('SunkBG', false);
	addLuaSprite('stage', false);
	addLuaSprite('ratio', true);
	addLuaSprite('ball', false);	
	close()
end
