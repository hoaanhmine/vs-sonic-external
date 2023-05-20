local changedImage = false
local disableImage = false
local DadX = 0
local DadY = 0
local BfX = 0
local BfY = 0
local GfX = 0
local GfY = 0
local BfOfs = 75
local GfOfs = 50
local DadOfs = 75
local curCameraState = nil
local cameraMoving = nil
local enableSystem = true
-------------------------
function onCreate()

	if string.lower(songName) ~= 'sanic' and
	string.lower(songName)  ~= 'chaos'  and
	string.lower(songName)  ~= 'soulless-nikocover' and
	string.lower(songName)  ~= 'soulless-orycover' and
	string.lower(songName)  ~= 'soulless' and
	string.lower(songName)  ~= 'fatality' and
	string.lower(songName)  ~= 'too-slow' and
	string.lower(songName)  ~= 'you-cant-fun' and
	string.lower(songName)  ~= 'drowned' and
	string.lower(songName)  ~= 'sunshine' and
	string.lower(songName)  ~= 'milk' and
	string.lower(songName)  ~= 'too-fest' and
	string.match(string.lower(songName),'milk') ~= 'milk' and
	string.lower(songName)  ~= 'cycles-encore' then
	startSonicCount(string.lower(songName))
	elseif string.lower(songName)  == 'cycles-encore' then
		startSonicCount('cycles')
	elseif string.lower(songName)  == 'too-slow' then
		startSonicCount('too-fun')
	elseif string.lower(songName)  == 'you-cant-fun' then
		startSonicCount('you-cant-fun')
	elseif string.lower(songName)  == 'drowned' then
	startSonicCount('drowned')
	elseif string.lower(songName) == 'fatality' then
		changeCountDown('-Fatal','StartScreens/fatal_',true,true,true,3,3,600,350)
	elseif string.lower(songName) == 'sunshine' then
		changeCountDown('-Tails','StartScreens/tails_',true,true,true,1,1,300,230)
	elseif string.match(string.lower(songName),'soulless') == 'soulless' then
		changeCountDown('-silence','',true,false,true,1,1,300,230)
	elseif string.match(string.lower(songName),'milk') == 'milk' then
		milkCountDown('milk')
	end

	precacheImage('exe/PolishedP1/NEWBGSKY');
	precacheImage('exe/PolishedP1/TreesFG');
	precacheImage('exe/PolishedP1/light above');
	precacheImage('exe/PolishedP1/BGYCRTop');
	precacheImage('exe/PolishedP1/TreesFront');

	makeLuaSprite('NEWBGSKY', 'exe/PolishedP1/NEWBGSKY', -910, -425);
	scaleObject('NEWBGSKY', 1.6, 1.6);

	makeLuaSprite('TreesFG', 'exe/PolishedP1/TreesFG', -920, -390);
	scaleObject('TreesFG', 1.6, 1.6);
	setScrollFactor('TreesFG', 1.15, 1.15);

	makeLuaSprite('light above', 'exe/PolishedP1/light above', -595, -510);
	scaleObject('light above', 1.4, 1.4);
	setScrollFactor('light above', 1.15, 1.15);
	setProperty('light above.alpha', 0.6);

	makeAnimatedLuaSprite('bgycr', 'exe/PolishedP1/bgycr', -2010, -650);
	scaleObject('bgycr', 10, 10);
	addAnimationByPrefix('bgycr', 'bgycr idle', 'bgycr idle', 24, true);
	setProperty('bgycr.antialiasing', false);

	makeLuaSprite('BGYCRTop', 'exe/PolishedP1/BGYCRTop', -2170, -840);
	scaleObject('BGYCRTop', 6.8, 6.8);
	setProperty('BGYCRTop.antialiasing', false);

	addLuaSprite('NEWBGSKY', false);
	addLuaSprite('TreesFG', false);
	addLuaSprite('light above', true);
	addLuaSprite('bgycr', false);
	addLuaSprite('BGYCRTop', false);

	setProperty('bgycr.visible', false);
	setProperty('BGYCRTop.visible', false);
	setProperty('light above.visible', false);
end
function onCreatePost(elapsed)

	addLuaScript("custom_events/zCameraFix")
	doTweenAlpha('camGame', 'camGame', 0, 0.00001, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 0, 0.00001, 'quadInOut');
	setProperty('gf.visible', false);
	setProperty('healthBar.visible', false);
	setProperty('healthBarBG.visible', false);
	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);
	setProperty('scoreTxt.visible', false);
	makeLuaSprite('light above1', 'exe/PolishedP1/light above1', -595, -510);
	scaleObject('light above1', 1.4, 1.4);
	setScrollFactor('light above1', 1.15, 1.15);
	addLuaSprite('light above1', true);
    makeLuaSprite('whitebg', '', -600, -260)
    setScrollFactor('whitebg', 0, 0)
    makeGraphic('whitebg', 5000, 5000, '000000')
    addLuaSprite('whitebg', false)
    setProperty('whitebg.alpha', 0)
    doTweenAlpha('applebadxd69', 'whitebg', 1, 0.00001, 'linear')
    hasSpawned = true
end

function onStepHit()
	if curStep == 16 then
	doTweenAlpha('camGame', 'camGame', 1, 18.66, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 1, 18.66, 'quadInOut');
	end
	if curStep == 504 then
	doTweenAlpha('camGame', 'camGame', 0, 0.8, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 0, 0.8, 'quadInOut');
	end
	if curStep == 527 then
	doTweenAlpha('camGame', 'camGame', 1, 0.00001, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 1, 0.00001, 'quadInOut');
	setProperty('light above1.visible', false);
	setProperty('light above.visible', true);
	setProperty('whitebg.visible', false);
	setProperty('gf.visible', false);
	setProperty('healthBar.visible', true);
	setProperty('healthBarBG.visible', true);
	setProperty('iconP1.visible', true);
	setProperty('iconP2.visible', true);
	setProperty('scoreTxt.visible', true);
	end
	if curStep == 2064 then
	doTweenAlpha('camGame', 'camGame', 0, 1.6, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 0, 1.6, 'quadInOut');
	end
end
function onUpdate()
	setProperty('timeBar.color',getColorFromHex('ff0000'));
    if enableSystem == true then
        if mustHitSection == false then
                if gfSection == false or gfSection == nil then
                    DadX = getMidpointX('dad') + 150 + getProperty('dad.cameraPosition[0]') + getProperty('opponentCameraOffset[0]')
                    DadY = getMidpointY('dad') - 100 + getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]')
                    if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',DadX-DadOfs,DadY)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',DadX+(DadOfs/2),DadY)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',DadX,DadY-DadOfs)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'Hey' or getProperty('dad.animation.curAnim.name') == 'Hey' then
                        triggerEvent('Camera Follow Pos',DadX,DadY-DadOfs)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'hey' or getProperty('dad.animation.curAnim.name') == 'hey' then
                        triggerEvent('Camera Follow Pos',DadX,DadY-DadOfs)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',DadX,DadY+DadOfs)
                        cameraMoving = true
                    else
                        if cameraMoving == true then
                            triggerEvent('Camera Follow Pos',DadX,DadY)
                            cameraMoving = false
                        end
                    end
                else
                    -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                    GfX = getMidpointX('gf') + getProperty('gf.cameraPosition[0]') + getProperty('girlfriendCameraOffset[0]')
                    GfY = getMidpointY('gf') + getProperty('gf.cameraPosition[1]') + getProperty('girlfriendCameraOffset[1]')
                    if getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',GfX-ofs,GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',GfX+ofs,GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',GfX,GfY-GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',GfX,GfY+GfOfs)
                        cameraMoving = true
                    else
                        if cameraMoving == true then
                            triggerEvent('Camera Follow Pos',GfX,GfY)
                            cameraMoving = false
                        end
                    end
                end
        else
                BfX = getMidpointX('boyfriend') - 100 - getProperty('boyfriend.cameraPosition[0]') + getProperty('boyfriendCameraOffset[0]')
                BfY = getMidpointY('boyfriend') - 100 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]')

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',BfX-BfOfs,BfY)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',BfX+BfOfs,BfY)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',BfX,BfY-BfOfs)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',BfX,BfY+BfOfs)
            else
                if cameraMoving == true then
                    triggerEvent('Camera Follow Pos',BfX,BfY)
                    cameraMoving = false
                end
                triggerEvent('Camera Follow Pos')
            end
        end
    end
end
function startSonicCount(name)
    if string.match(name, " ") ~= nil then
        name = string.gsub(name," ","-")
    end
    setProperty('introSoundsSuffix','-silence')
    makeLuaSprite('blackScreenSonicCount','',0,0)
    setObjectCamera('blackScreenSonicCount','other')
    makeGraphic('blackScreenSonicCount',screenWidth,screenHeight,'000000')
    addLuaSprite('blackScreenSonicCount',true)
    makeLuaSprite('startCircle','Circle-'..name,800,00)
    setObjectCamera('startCircle','other')
    addLuaSprite('startCircle',true)
    makeLuaSprite('startText','Text-'..name,-800,00)
    setObjectCamera('startText','other')
    addLuaSprite('startText',true)
    setObjectCamera('startText','other')
    addLuaSprite('startText',true)
    runTimer('tweenWow',0.2)
    runTimer('tween2',getPropertyFromClass('Conductor','crochet')/ 1000 * 5)
end
function milkCountDown(name)
    if string.match(name, " ") ~= nil then
        name = string.gsub(name," ","-")
    end
    setProperty('introSoundsSuffix','-silence')
    makeLuaSprite('blackScreenSonicCount','',0,0)
    setObjectCamera('blackScreenSonicCount','other')
    makeGraphic('blackScreenSonicCount',screenWidth,screenHeight,'000000')
    addLuaSprite('blackScreenSonicCount',true)
    makeLuaSprite('startCircle','StartScreens/Circle-'..name,0,0)
    setProperty('startCircle.scale.x',0)
    setObjectCamera('startCircle','other')
    addLuaSprite('startCircle',true)
    runTimer('tweenMajin',0.2)
    runTimer('tween2',getPropertyFromClass('Conductor','crochet')/ 1000 * 5)
end
function onTimerCompleted(tag)
    if tag == 'tweenWow' then
        doTweenX('circleX','startCircle',0,0.6,'quartOut')
        doTweenX('textX','startText',0,0.6,'quartOut')
        --doTweenX('circleX','startCircle',0,0.7,'linear')
        --doTweenX('textX','startText',0,0.7,'linear')
    end
    if tag == 'tweenMajin' then
        doTweenX('circleX','startCircle.scale',1,0.4,'bounceOut')
        playSound('flatBONK')
        --doTweenX('circleX','startCircle',0,0.7,'linear')
        --doTweenX('textX','startText',0,0.7,'linear')
    end
    if tag == 'tween2' then
        --doTweenX('circleX','startCircle',-900,0.7,'quartOut')
        --doTweenX('textX','startText',1200,0.7,'quartOut')
        doTweenAlpha('blackScreenDestroy','blackScreenSonicCount',0,0.5,'linear')
        runTimer('tweenCircle',0.5)
    end
    if tag == 'tweenCircle' then
        doTweenAlpha('circleDestroy','startCircle',0,0.5,'linear')
        doTweenAlpha('textDestroy','startText',0,0.5,'linear')
    end
end
function onCountdownTick(counter)
    if counter > 0 then
        addLuaSprite('customIntro'..counter)
        doTweenAlpha('byeCustomIntro'..counter,'customIntro'..counter,0,getPropertyFromClass('Conductor','crochet')/ 1000,'linear')
        if counter == 1 then
            if disableImage == true then
                setProperty('countdownReady.visible',false)
            end
            if changedImage == true then
                doTweenAlpha('byeReady','customIntro'..counter,0,0.5,'linear')
            end
        elseif counter == 2 then
            if disableImage == true then
                setProperty('countdownSet.visible',false)
            end
            removeLuaSprite('customIntro'..counter - 1,true)
        elseif counter == 3 then
            if disableImage == true then
                setProperty('countdownGo.visible',false)
            end
            removeLuaSprite('customIntro'..counter -1,true)
        end
    end
end
function changeCountDown(name,image,changeSong,changeImage,disableCountDownImage,scaleX,scaleY,posX,posY)
    disableImage = disableCountDownImage
    if changeSong == true then
        setProperty('introSoundsSuffix',name)
    end
    if changeImage == true then
        changedImage = true
        for countDown = 1,2 do
            makeLuaSprite('customIntro'..countDown,image..countDown,posX,posY)
            setObjectCamera('customIntro'..countDown,'hud')
            setProperty('customIntro'..countDown..'.scale.x',scaleX)
            setProperty('customIntro'..countDown..'.scale.y',scaleY)
        end
        makeLuaSprite('customIntro3',image..'go',posX,posY)
        setObjectCamera('customIntro3','hud')
        setProperty('customIntro3.scale.x',scaleX)
        setProperty('customIntro3.scale.y',scaleY)
    end
end
function onTweenCompleted(tag)
    if tag == 'circleDestroy' then
        removeLuaSprite('startCircle',true)
        removeLuaSprite('startText',true)
        removeLuaSprite('blackScreenSonicCount',true)
    end
    if tag == 'byeCustomIntro3' then
        removeLuaSprite('customIntro3',true)
    end
end