-----------------------------------
-- Ability: Retaliation
-- Allows you to counterattack but
-- reduces movement speed.
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	return 0,0;
end;

function OnUseAbility(player, target, ability)
    player:addStatusEffect(EFFECT_RETALIATION,1,0,180);
end;
