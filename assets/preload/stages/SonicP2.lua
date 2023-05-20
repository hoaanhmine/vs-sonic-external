function onCreate()

	setProperty('defaultCamZoom',0.8)
	makeLuaSprite('forest', 'SonicP2/forest', -550, -150);
	makeLuaSprite('Tre', 'SonicP2/Tre', -550, -150);
	
	setProperty('forest.antialiasing', true);
	setProperty('Tre.antialiasing', true);
    
	makeAnimatedLuaSprite('PixelBG', 'exe/SonicP2/ENCORE/HillBG', -500, -250);
	addAnimationByPrefix('PixelBG', 'HillBG Idle', 'HillBG Idle', 24, true)
    setGraphicSize('PixelBG', getProperty('PixelBG.width') * 5)
    addLuaSprite('PixelBG', false);
    setProperty('PixelBG.alpha',0);
    scaleObject('PixelBG', 5, 5);
    setProperty('PixelBG.antialiasing',false);
	
	addLuaSprite('forest', false)
	addLuaSprite('Tre', true)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    if curStep < 530 then
        cameraShake('game', 0.006, 0.5)
    end

    if curStep > 783 then
        cameraShake('game', 0.006, 0.5)
    end

end