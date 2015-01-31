-----------------------------------
-- Ability: Building Flourish
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	if (player:hasStatusEffect(EFFECT_GRAND_PAS)) then
		return 0,0;
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_1)) then
		return 0,0;
	elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_2)) then
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
	if (target:getEquipID(SLOT_HEAD) == 11182) then
        critlvl = 10;
    elseif (target:getEquipID(SLOT_HEAD) == 11082) then
        critlvl = 20;
    end
    if (critlvl == 0) then
        critlvl = 0;
    end
    
	if (player:hasStatusEffect(EFFECT_GRAND_PAS)) then
		player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,5,critlvl,60);
	else
		if (player:hasStatusEffect(EFFECT_FINISHING_MOVE_1)) then
			player:delStatusEffect(EFFECT_FINISHING_MOVE_1);
			player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,1,critlvl,60);
		elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_2)) then
			player:delStatusEffect(EFFECT_FINISHING_MOVE_2);
			player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,2,critlvl,60);
		elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_3)) then
			player:delStatusEffect(EFFECT_FINISHING_MOVE_3);
			player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,3,critlvl,60);
		elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_4)) then
			player:delStatusEffect(EFFECT_FINISHING_MOVE_4);
			player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,4,critlvl,60);
		elseif (player:hasStatusEffect(EFFECT_FINISHING_MOVE_5)) then
			player:delStatusEffect(EFFECT_FINISHING_MOVE_5);
			player:addStatusEffect(EFFECT_CLIMACTIC_FLOURISH,5,critlvl,60);
		end
	end
end;