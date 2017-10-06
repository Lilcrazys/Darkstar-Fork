-----------------------------------
-- Ability: Sepulcher
-- Lowers Acc Eva MAcc MEva and TP
-- Gain for Undead.
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");

-----------------------------------
-- OnUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (target:isUndead()) then
        return 0,0;
    else
        return chatType.UNABLE_TO_USE_JA2,0;
    end
end;

function OnUseAbility(player, target, ability)
    target:addStatusEffect(EFFECT_SEPULCHER,-10,0,180);
end;