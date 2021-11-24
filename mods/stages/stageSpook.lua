
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 420.95;
local yy = 500;
local xx2 = 652.9;
local yy2 = 500;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	-- background shit
	offset  = 900
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

		makeLuaSprite('stagecurtains', 'dark', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 3, 3);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stockingFire', false);
	addLuaSprite('people', false);
	addLuaSprite('stagecurtains', true);
	
end




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.9)
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
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.9)
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
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

