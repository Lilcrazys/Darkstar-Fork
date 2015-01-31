-----------------------------------
-- Ability: Ternary Flourish
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/weaponskills");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	
	if (player:hasStatusEffect(EFFECT_FINISHING_MOVE_3)) then
		return 0,0;
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_4)) then
		return 0,0;
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_5)) then
		return 0,0;
	else	
		return MSGBASIC_NO_FINISHINGMOVES,0;
	end
end;

function onUseAbility(player, target, ability)
		
	if (player:hasStatusEffect(EFFECT_FINISHING_MOVE_3)) then
        player:delStatusEffect(EFFECT_FINISHING_MOVE_3);
		player:addStatusEffect(EFFECT_TERNARY_FLOURISH,1,0,60);  
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_4)) then
        player:delStatusEffect(EFFECT_FINISHING_MOVE_4);
        player:addStatusEffect(EFFECT_FINISHING_MOVE_1,1,0,7200);
		player:addStatusEffect(EFFECT_TERNARY_FLOURISH,1,0,60);
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_5)) then
        player:delStatusEffect(EFFECT_FINISHING_MOVE_5);
        player:addStatusEffect(EFFECT_FINISHING_MOVE_2,1,0,7200);
		player:addStatusEffect(EFFECT_TERNARY_FLOURISH,1,0,60);
	end		
end;