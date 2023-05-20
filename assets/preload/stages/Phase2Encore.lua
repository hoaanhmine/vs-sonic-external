function onCreate()
	
	makeLuaSprite('sky', 'exe/SonicP2/ENCORE/placeholder-sky', -680, -420);
	setGraphicSize('sky', getProperty('sky.width') * 2)
    setScrollFactor ('sky', 0.4, 0.4);
    addLuaSprite('sky', false);

    makeLuaSprite('clouds', 'exe/SonicP2/ENCORE/placeholder-clouds', -680, -420);
	setGraphicSize('clouds', getProperty('clouds.width') * 2)
    setScrollFactor ('clouds', 0.8, 0.8);
    addLuaSprite('clouds', false);
	
	makeLuaSprite('CBG', 'exe/SonicP2/ENCORE/placeholder-cityBG', -680, -420);
	setGraphicSize('CBG', getProperty('CBG.width') * 2)
    setScrollFactor ('CBG', 0.5, 0.5);
    addLuaSprite('CBG', false);
	
	makeLuaSprite('city', 'exe/SonicP2/ENCORE/placeholder-city', -680, -420);
	setGraphicSize('city', getProperty('city.width') * 2)
    setScrollFactor ('city', 0.6, 0.7);
    addLuaSprite('city', false);
	
	makeLuaSprite('sirens', 'exe/SonicP2/ENCORE/placeholder-sirens', -680, -520);
	setGraphicSize('sirens', getProperty('sirens.width') * 2)
    setScrollFactor ('sirens', 0.6, 0.6);
    addLuaSprite('sirens', false);
	
	makeLuaSprite('bridge', 'exe/SonicP2/ENCORE/placeholder-bridge', -680, -420);
	setGraphicSize('bridge', getProperty('bridge.width') * 2)
    setScrollFactor ('bridge', 1.0, 1.0);
    addLuaSprite('bridge', false);

    makeAnimatedLuaSprite('PixelBG', 'exe/SonicP2/ENCORE/HillBG', -500, -250);
	addAnimationByPrefix('PixelBG', 'HillBG Idle', 'HillBG Idle', 24, true)
    setGraphicSize('PixelBG', getProperty('PixelBG.width') * 5)
    addLuaSprite('PixelBG', false);
    setProperty('PixelBG.alpha',0);
    scaleObject('PixelBG', 5, 5);
    setProperty('PixelBG.antialiasing',false);

    makeAnimatedLuaSprite('AngelBG', 'exe/SonicP2/ENCORE/AngelBG', -500, -250);
	addAnimationByPrefix('AngelBG', 'AngelBG Run', 'AngelBG Run', 24, true)
    setGraphicSize('AngelBG', getProperty('AngelBG.width') * 5)
    addLuaSprite('AngelBG', false);
    setProperty('AngelBG.alpha',0);
    scaleObject('AngelBG', 5, 5);
    setProperty('AngelBG.antialiasing',false);

    makeLuaSprite('MarbleBG', 'exe/SonicP2/ENCORE/MarbleBG',-500, -100);
    setGraphicSize('MarbleBG', getProperty('MarbleBG.width') * 5)
    addLuaSprite('MarbleBG', false);
    setProperty('MarbleBG.alpha',0);
    scaleObject('MarbleBG', 5, 5);
    setProperty('MarbleBG.antialiasing',false);
    
    makeAnimatedLuaSprite('StarDustBG', 'exe/SonicP2/ENCORE/Star', -500, -230);
	addAnimationByPrefix('StarDustBG', 'Star Dust', 'Star Dust', 24, true)
    setGraphicSize('StarDustBG', getProperty('StarDustBG.width') * 5)
    addLuaSprite('StarDustBG', false);
    setProperty('StarDustBG.alpha',0);
    scaleObject('StarDustBG', 5, 5);
    setProperty('StarDustBG.antialiasing',false);

end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    if curStep < 530 then
        cameraShake('game', 0.006, 0.5)
    end

    if curStep > 783 then
        cameraShake('game', 0.006, 0.5)
    end

end

--function onStepHit(elapsed)
--
--    if curStep == 528 then
--        
--		
--		
--    end
--
--    if curStep == 783 then
--        
--		
--    end
--end

playVideo = true;
playDialogue = false;

function onStartCountdown()
	if IsEncore then
		if playVideo then --Video cutscene plays first
			startVideo('tooslowcutscene2'); --Play video file from "videos/" folder
			playVideo = false;
			return Function_Stop; --Prevents the song from starting naturally
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end



--function onEndSong()
--	if playVideo then --Video cutscene plays first
--			startVideo('youcantruncutscene2'); --Play video file from "videos/" folder
--			playVideo = false;
--			return Function_Stop; --Prevents the song from starting naturally
--		end
--end