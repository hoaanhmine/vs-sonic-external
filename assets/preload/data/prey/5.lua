local byeSonic = false
function onCreate()

    makeAnimatedLuaSprite('MechaIThink3','characters/starved/Furnace_sheet',-600,850)
    setProperty('MechaIThink3.antialiasing',false)
    addAnimationByPrefix('MechaIThink3','idle','Furnace idle',24,true)
    scaleObject('MechaIThink3',6,6)
    
    makeAnimatedLuaSprite('MechaIThink','characters/starved/Target',-800, 100)
    setProperty('MechaIThink.antialiasing',false)
    addAnimationByPrefix('MechaIThink','idle','Idle',24,true)
    scaleObject('MechaIThink',1,1)

    makeLuaSprite('MechaIThink2','exe/starved/furnace_gotcha',2200,430)
    precacheImage('furnace_gotcha')
    setProperty('MechaIThink2.antialiasing',false)
    scaleObject('MechaIThink2',6,6)

    setProperty('dad.alpha',0)

    addLuaSprite('MechaIThink', false);

end
function onStepHit()
    if curStep == 130 then
        setProperty('camZooming',true)
    elseif curStep == 143 then
        setProperty('camZooming',false)
    end
    if curStep == 236 then
        doTweenX('backMecha','MechaIThink',95,1,'quartOut')
        setProperty('MechaIThink.alpha',1)
    end
    if curStep == 255 then
        setProperty('MechaIThink.alpha',0)
        setProperty('dad.alpha',1)
    end

    if curStep == 1508 then
        doTweenX('byeMechaRemastered','dad',-600,2.5,'quartInOut')
        doTweenAngle('byeMechaRemasteredAngle','dad',-180,3.5,'quartInOut')
    end
    if curStep == 1576 then
        doTweenX('helloEggHead','dad',1100,2,'quartOut')
    end
    if curStep == 2448 then
        addLuaSprite('MechaIThink3',true)
        doTweenX('rightMecha','MechaIThink3',2200,5,'linear')
    end
    if curStep == 3328 then     
        doTweenX('byeEggHead','dad',-500,2.5,'quartInOut')
    end
    if curStep == 3364 then
        addLuaSprite('MechaIThink2',true)
        byeSonic = true
    end
    if curStep == 3367 then
        setProperty('camGame.visible',false)
        addLuaSprite('wowBlack')
        addLuaSprite('wowRed')
        doTweenAlpha('redBye','wowRed',0,1.5,'linear')
    end
end
function onEvent(name,v1,v2)
    if name == 'Change Character' then
        if v2 == 'starved-pixel' and v1 == 'dad' then
            setProperty('dad.x',-500)
            setProperty('dad.y',-200)
        end
    end
end

function onUpdate()
    if byeSonic == true and getProperty('MechaIThink2.x') > getProperty('boyfriend.x') then
        setProperty('MechaIThink2.x',getProperty('MechaIThink2.x') - 80)
    end
end
function onTweenCompleted(tag)
    if tag == 'rightMecha' then
        removeLuaSprite('MechaIThink3',true)
    end
end