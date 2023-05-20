-- Rewrite this later please, since this is mainly placeholder shit.
local splashCount = 0;
local enableNewSystem = 2;
local textureSplash = 'BloodSplash';
local texturesplashfrombefore = nil
local defaultSplashXfromBefore = nil
local defaultSplashYfromBefore = nil
local splashOffsetX = 150
local splashOffsetY = 150
local defaultSplashX = 70
local defaultSplashY = 35
local splashScaleX = nil
local splashScaleY = nil
local splashVelocity = 30
local splashAlpha = 1
local splashesDestroyed = 0

local splashAnims = {'note splash purple 1','note splash blue 1','note splash green 1','note splash red 1'}

function onCreatePost()
		precacheImage(textureSplash)
		makeAnimatedLuaSprite('noteSplashpChache',textureSplash, 100, 100);
		addLuaSprite('noteSplashpChache',false);
		setProperty('noteSplashpChache.visible',false)
end

function goodNoteHit(note, direction, type, cumstick)
	if sickTrack ~= getProperty('sicks') then
		if cumstick == false then
		if getPropertyFromClass('ClientPrefs','noteSplashes') == true and not cumstick then
		if textureSplash == 'BloodSplash' then
		splashOffsetX = defaultSplashX
		splashOffsetY = defaultSplashY
		splashScaleX = 1
		splashScaleY = 1
		end
		spawnCustomSplash(note, direction, type,textureSplash);
		end
		end
		sickTrack = getProperty('sicks');
	end
end

function spawnCustomSplash(noteId, noteDirection, type,textureNote)
	splashThing = splashAnims[noteDirection + 1]
	splashCount  = splashCount + 1

	makeAnimatedLuaSprite('noteSplash'..splashCount, textureNote, getPropertyFromGroup('playerStrums', noteDirection, 'x'), getPropertyFromGroup('playerStrums', noteDirection, 'y'));
	addAnimationByPrefix('noteSplash'..splashCount, 'anim', splashThing, splashVelocity, false);
	if splashScaleX ~= nil then
		setProperty('noteSplash' .. splashCount .. '.scale.x', splashScaleX);
	end
	if splashScaleY ~= nil then
		setProperty('noteSplash' .. splashCount .. '.scale.y', splashScaleY);
	end
	setProperty('noteSplash' .. splashCount .. '.offset.x', splashOffsetX);
	setProperty('noteSplash' .. splashCount .. '.offset.y', splashOffsetY);

	setProperty('noteSplash' .. splashCount .. '.alpha', splashAlpha);

	setObjectCamera('noteSplash'..splashCount, 'hud');
	setObjectOrder('noteSplash'..splashCount, 9999);
	addLuaSprite('noteSplash'..splashCount,true);
end

function onUpdate()
	if textureSplash == 'BloodSplash' then
		splashVelocity = 30
	else
		splashVelocity = 24
	end
	if enableNewSystem == 2 then
		if sickTrack ~= 0 then
			for splashes = splashesDestroyed, splashCount do
				if getProperty('noteSplash'..splashes..'.animation.curAnim.finished') then
					setProperty('noteSplash'..splashes..'.visible',false)
					removeLuaSprite('noteSplash'..splashes,true)
					splashesDestroyed = splashesDestroyed + 1
				end
			end
			for splashesDefault = 0,getProperty('grpNoteSplashes.length') do
				setPropertyFromGroup('grpNoteSplashes', splashesDefault,'visible',false)
			end
		end
	end
end

function backSplashArray()
	table.insert(splashAnims,1,'note splash purple 1')
	table.insert(splashAnims,2,'note splash blue 1')
	table.insert(splashAnims,3,'note splash green 1')
	table.insert(splashAnims,4,'note splash red 1')
end