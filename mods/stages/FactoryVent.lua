function onCreate()

	makeLuaSprite('toyFactory','factory-vent',-500,-330)
	addLuaSprite('toyFactory',false)
	setLuaSpriteScrollFactor('toyFactory', 0.9, 0.9);

	makeLuaSprite('theShadow','shadow-vent',-500,-100)
	addLuaSprite('theShadow',true)
	setLuaSpriteScrollFactor('theShadow', 0.5, 0.5);

end


function onBeatHit()-- for every beat
	-- body
end

function onStepHit()-- for every step
	-- body
end

function onUpdate()
	-- body
end
