local tilin = true
local width = 0

function onCreate()
  setProperty('introSoundsSuffix', '-og')

 makeLuaSprite('stardustBg', 'exe/starved/stardustBg', -1000, -750);
 width = getProperty("stardustBg.width")    
 setLuaSpriteScrollFactor('stardustBg', 1, 1);
  scaleObject('stardustBg', 1, 1);
  addLuaSprite('stardustBg', false);
  setProperty('stardustBg.visible', false);
  
  makeLuaSprite('stardustBg2', 'exe/starved/stardustBg2', 3600, -750);
 width = getProperty("stardustBg2.width")    
 setLuaSpriteScrollFactor('stardustBg2', 1, 1);
  scaleObject('stardustBg2', 1, 1);
  addLuaSprite('stardustBg2', false);
  setProperty('stardustBg2.visible', false);
 
 makeLuaSprite('stardustFloor', 'exe/starved/stardustFloor1', -1000, -1460);
 width = getProperty("stardustFloor.width")    
 setLuaSpriteScrollFactor('stardustFloor', 1, 1);
  scaleObject('stardustFloor', 1, 1);
  addLuaSprite('stardustFloor', true);
  setProperty('stardustFloor.visible', false);
  
  makeLuaSprite('stardustFloor2', 'exe/starved/stardustFloor2', 3600, -1460);
 width = getProperty("stardustFloor2.width")    
 setLuaSpriteScrollFactor('stardustFloor2', 1, 1);
  scaleObject('stardustFloor2 ', 1, 1);
  addLuaSprite('stardustFloor2', true);
  setProperty('stardustFloor2.visible', false);
  
  makeLuaSprite('red', 'exe/starved/red', -500, -400);
addLuaSprite('red', true);
scaleObject('red', 2, 2);
setProperty('red.visible', false);

makeLuaSprite('Majin2', 'exe/sonicUI/Majin2', -300, -70);
addLuaSprite('Majin2', false);
scaleObject('Majin2', 1.78, 1.68) 
setObjectCamera('Majin2', 'other');
setBlendMode('Majin2', 'MULTIPLY')

   setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-gameover')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry')
end


function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty('botplayTxt.visible', 0)
	setProperty("timeBarBG.visible", false)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
	setProperty("healthBar.visible", true)
	setProperty('healthBar.x', 530)
end

function onTweenCompleted(tag)
  if tag == 'stardustFloorTweene' then
    setProperty("stardustFloor.x", -1000)
    setProperty("stardustFloor2.x", 3600)
    setProperty("stardustBg.x", -1000)
    setProperty("stardustBg2.x", 3600)
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5, 'linear'); 
  end
end

function onUpdate(tag)
  if tag == ('stardustFloorTweene') then
    setProperty("stardustFloor.x", -1000)
    setProperty("stardustFloor2.x", 3600)
    setProperty("stardustBg.x", -1000)
    setProperty("stardustBg2.x", 3600)
    doTweenX('stardustFloorTweene', 'stardustFloor', -3000, 0.000001, 'linear');
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', 500, 0.000001, 'linear');
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 15, 'linear');
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 15, 'linear');
  end
end

function onStepHit()
  if curStep == 128 then
    setProperty('stardustFloor.visible', true);
    setProperty('stardustFloor2.visible', true);
    setProperty('stardustBg.visible', true);
    setProperty('stardustBg2.visible', true);
    doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
  end
end
