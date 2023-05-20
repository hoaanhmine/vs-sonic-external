function onUpdatePost(elapsed)
	for i = 0, getProperty('grpNoteSplashes.length')-1 do
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -40)
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -80)
		setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 1)
		scaleObject('grpNoteSplashes', 3)
	end

	setTextString('misses', "Combo Breaks:".. getPropertyFromClass(misses))
end

function onCreatePost()
    setTimeBarColors('FF0000')
end