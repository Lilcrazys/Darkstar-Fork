-----------------------------------------
-- ID: 19132
-- Item: twilight knife
-- 
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onAdditionalEffect(player,target,damage)
    local draintype = math.random(1,2)
	local power = math.random(10,15);
	if(draintype == 1) then
        target:addMod(MOD_ENSPELL_DMG,0);	    
	    return SUBEFFECT_HP_DRAIN, 161, player:addHP(power);
	elseif(draintype == 2) then   
	    target:addMod(MOD_ENSPELL_DMG,0);   
	    return SUBEFFECT_TP_DRAIN, 162, player:addMP(power);
    end	   
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(player,target,effect)
end;





