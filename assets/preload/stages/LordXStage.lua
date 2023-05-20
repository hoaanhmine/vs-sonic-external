function onCreate()

	makeLuaSprite('sky', 'exe/LordXStage/sky', 0, -40);
	scaleObject('sky', 3, 3);

	makeLuaSprite('hills', 'exe/LordXStage/hills', 0, -180);
	scaleObject('hills', 1.5, 1.5);
	
	makeLuaSprite('floor', 'exe/LordXStage/ground', 0, 50);
	scaleObject('sky', 1, 1);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('floor', false);

	close(true);

end                                