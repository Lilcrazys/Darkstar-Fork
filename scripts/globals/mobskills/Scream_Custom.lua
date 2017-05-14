---------------------------------------------------
-- Scream (Custom Version)
-- 15' Reduces MND of players in area of effect.
-- Some NM versions also do Terror
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 2859 or mob:getPool() == 4554 or mob:getPool() == 9805) then
        -- Nightmare Mandragora, Chloris, Pancimanci
        MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 20, 3, 120);
        skill:setMsg(MobStatusEffectMove(mob, target, EFFECT_TERROR, 10, 0, 30));

        return EFFECT_TERROR;
    else
        -- DSP version
        local typeEffect = EFFECT_MND_DOWN;
        skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 10, 3, 120));

        return typeEffect;
    end
end;
