function onCreatePost()
	doTweenZoom('asf', 'camGame', 1.1, 1, 'cubeOut')
	setProperty('defaultCamZoom', 1.1)
	-- middle scroll shit
	noteTweenX('byearrows1', 0, -200, 0.01, 'linear')
        noteTweenX('byearrows2', 1, -200, 0.01, 'linear')
        noteTweenX('byearrows3', 2, -200, 0.01, 'linear')
        noteTweenX('byearrows4', 3, -200, 0.01, 'linear')
	noteTweenX('middletime1', 4, 414, 0.01, 'linear')
        noteTweenX('middletime2', 5, 527, 0.01, 'linear')
        noteTweenX('middletime3', 6, 637, 0.01, 'linear')
        noteTweenX('middletime4', 7, 750, 0.01, 'linear')
end

function onUpdate()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', '920', '300')
		doTweenZoom('asf', 'camGame', 0.9, 1, 'cubeOut')
		setProperty('defaultCamZoom', 0.9)
	else
		triggerEvent('Camera Follow Pos', '920', '250')
		doTweenZoom('asf', 'camGame', 1.1, 1, 'cubeOut')
		setProperty('defaultCamZoom', 1.1)
	end
end