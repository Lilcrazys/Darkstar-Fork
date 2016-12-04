-----------------------------------
-- Ability: Cover
-- Allows you to protect party members by placing yourself between them and the enemy.
-- Obtained: Paladin Level 35
-- Recast Time: 3:00
-- Duration: 15~30
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onAbilityCheck
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (target == nil or target:getID() == player:getID() or not target:isPC()) then
        return MSGBASIC_CANNOT_ON_THAT_TARG, 0;
    else
        return 0, 0;
    end
end;

-----------------------------------
-- onUseAbility
-----------------------------------

function onUseAbility(player,target,ability)
    -- temp till this is actually working
    target:transferEnmity(player, 10, 25)

    --[[ this doesn't exist in darkstar...
	--print();
	ability:setMsg(0);
	duration = 60 + player:getMerit(MERIT_COVER_EFFECT_LENGTH);
	if (target ~= player) thenz
		target:addStatusEffect(EFFECT_COVER,1,0,duration);
		cover = target:getStatusEffect(EFFECT_COVER);
		cover:setEffector(player);
	end
    ]]
end;
