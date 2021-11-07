function onCreate()
	-- background shit
	offset = 900
	makeLuaSprite('stageback', 'space', -500, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 3, 3)
	
	makeLuaSprite('stagefront', 'normalOne', -550, -600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 3, 3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('stockingFire', 'stockingFire', -550, -600);
		addAnimationByPrefix('stockingFire', 'stocking fire', 'stocking fire', 25, true)
		setScrollFactor('stockingFire', 0.9, 0.9);
		scaleObject('stockingFire', 3, 3);
		objectPlayAnimation('stockingFire', 'stocking fire', true)

		makeAnimatedLuaSprite('people', 'people', -550, -600);
		addAnimationByPrefix('people', 'the guys', 'the guys', 20, true)
		objectPlayAnimation('people', 'the guys', true)
		setScrollFactor('people', 0.9, 0.9);
		scaleObject('people', 3, 3);

		makeLuaSprite('stagecurtainssss', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stockingFire', false);
	addLuaSprite('people', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onStepHit(...)--for every beat

	if curBeat % 18 == 1 then
		
	end
	
end