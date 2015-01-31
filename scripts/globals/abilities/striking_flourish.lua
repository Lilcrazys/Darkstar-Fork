-----------------------------------
-- Ability: Striking Flourish
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/weaponskills");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (player:hasStatusEffect(EFFECT_FINISHING_MOVE_2)) then
		return 0,0;
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_3)) then	
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
	local critlvl = 0
	if (target:getEquipID(SLOT_BODY) == 11202) then
        critlvl = 25;
    elseif (target:getEquipID(SLOT_BODY) == 11102) then
        critlvl = 50;
    end
    if (critlvl == 0) then
        critlvl = 0;
    end
    
	if (player:hasStatusEffect(EFFECT_GRAND_PAS)) then
		player:addStatusEffect(EFFECT_STRIKING_FLOURISH,1,critlvl,60);
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_2)) then
        player:delStatusEffectSilent(EFFECT_FINISHING_MOVE_2);
		player:addStatusEffect(EFFECT_STRIKING_FLOURISH,1,critlvl,60);
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_3)) then
        player:delStatusEffectSilent(EFFECT_FINISHING_MOVE_3);
        player:addStatusEffect(EFFECT_FINISHING_MOVE_1,1,0,7200);
		player:addStatusEffect(EFFECT_STRIKING_FLOURISH,1,critlvl,60); 
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_4)) then
        player:delStatusEffectSilent(EFFECT_FINISHING_MOVE_4);
        player:addStatusEffect(EFFECT_FINISHING_MOVE_2,1,0,7200);
		player:addStatusEffect(EFFECT_STRIKING_FLOURISH,1,critlvl,60); 
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_5)) then
        player:delStatusEffectSilent(EFFECT_FINISHING_MOVE_5);
        player:addStatusEffect(EFFECT_FINISHING_MOVE_3,1,0,7200);
		player:addStatusEffect(EFFECT_STRIKING_FLOURISH,1,critlvl,60);
	end
end;