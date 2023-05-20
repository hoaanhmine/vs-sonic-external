function onCreate()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled');
	
    makeLuaSprite('field','exe/trichael/field',-600,-400)
	addLuaSprite('field',false) 
    setLuaSpriteScrollFactor('theSky', 0.9, 0.9);

end

function onCreatePost()
	setProperty('healthBar.visible', false);
	setProperty('healthBarBG.visible', false);
	
	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);
end

function onBeatHit( ... )--for every beat
    --body
end

function onStepHit( ... )-- for every step
    -- body
end

function onUpdate( ... )
	local health = getProperty('health');
	
	if health < 0.1 then
		setProperty('health',0.2);
	end
end