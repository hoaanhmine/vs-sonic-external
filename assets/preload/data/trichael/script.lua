function onCreatePost()
	makeLuaSprite('whiteTint','',-600,-200);
	makeGraphic('whiteTint',4000,4000,'ffffff');
	setObjectCamera('whiteTint','game');
	setObjectOrder('whiteTint',169);
	scaleObject('whiteTint',1.5,1.5);
	setScrollFactor('whiteTint', 0.1, 0.1);
	
	makeLuaSprite('blackTint','',-600,-200);
	makeGraphic('blackTint',4000,4000,'000000');
	setObjectCamera('blackTint','hud');
	scaleObject('blackTint',1.5,1.5);
	setScrollFactor('blackTint', 0.1, 0.1);
	
	setProperty('blackTint.alpha', 1);
	
	addLuaSprite('whiteTint',true);
	addLuaSprite('blackTint',true);
	setObjectOrder('blackTint',10);
end

function opponentNoteHit()
    health = getProperty('health')
	if health > 0.1 then
		setProperty('health', health- 0.02);
	end
	--[[
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.01);
    end
	--]]
end

function onStepHit()
	if curStep == 99 then
		doTweenAlpha('blackTintFadeout','blackTint',0,1,'quadOut');
	end	
	if curStep == 114 then
		doTweenAlpha('whiteTintFadeout','whiteTint',0,1,'quadOut');
	end	
	if curStep == 1012 then
		setObjectOrder('blackTint',15);
		doTweenAlpha('blackTintFadein','blackTint',1,1,'quadIn');
	end	
	if curStep == 1028 then
		doTweenAlpha('blackTintFadeout2','blackTint',0,0.5,'quadOut');
	end	
	if curStep == 1680 then
		doTweenAlpha('whiteTintFadein','whiteTint',1,2,'quadIn');
	end
	if curStep == 1808 then
		doTweenAlpha('blackTintFadein2','blackTint',1,1,'quadIn');
	end	
end

local xx = 320;
local yy = 450;
local xx2 = 1020;
local yy2 = 550;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
   
end