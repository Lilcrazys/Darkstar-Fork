-----------------------------------
-- Ability: Unbridled Learning
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)  
    if player:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) then
		return MSGBASIC_EFFECT_ALREADY_ACTIVE, 0;
	end
	return 0,0;
end;

function OnUseAbility(player, target, ability)
    if (player:getMainJob() == JOB_BLU and player:getMainLvl() >= 95) then
	    player:addStatusEffect(EFFECT_UNBRIDLED_LEARNING,1,0,120);
		
	end
end;
