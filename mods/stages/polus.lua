function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'polusSky', -829, -552);
	-- setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'polusrocks', -760, -300);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'polusHills', -1201, -180);
		-- setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'polusWarehouse', 186, -165);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 0.9, 0.9);

		makeLuaSprite('stagecurtains', 'polusGround', -300, 300);
		setScrollFactor('stagecurtains', 0.9, 0.9);
		scaleObject('stagecurtains', 1.1, 1.1);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end