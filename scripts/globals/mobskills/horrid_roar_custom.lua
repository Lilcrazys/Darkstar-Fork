---------------------------------------------------
-- Horrid Roar
-- Dispels a single buff at random which could be food. It does not reset hate.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dispel =  target:dispelStatusEffect();

    if (dispel == EFFECT_NONE) then
        -- no effect
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    else
        skill:setMsg(msgBasic.DISAPPEAR);
    end

    return dispel;
end