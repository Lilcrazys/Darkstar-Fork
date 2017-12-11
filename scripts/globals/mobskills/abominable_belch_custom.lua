---------------------------------------------------
-- Abominable Belch
-- AoE Paralyze, Silence, and Plague.
-- Used in place of Vile Belch starting at <50% HP.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local effect = EFFECT_NONE;
    local msg = msgBasic.MISS;
    if (MobStatusEffectMove(mob, target, EFFECT_SILENCE, 1, 0, 30) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_SILENCE;
    end
    if (MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 1, 0, 30) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_PARALYSIS;
    end
    if (MobStatusEffectMove(mob, target, EFFECT_PLAGUE, 1, 0, 30) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_PLAGUE;
    end
    if (effect ~= EFFECT_NONE) then
        msg = msgBasic.ENFEEB_IS;
    end
    skill:setMsg(msg);

    return effect;
end;
