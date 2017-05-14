---------------------------------------------
-- Viscid Emission
--
-- Description: Inflicts amnesia in an area of effect.
-- Family: Rafflesia
-- Type: Enfeebling
-- Can be dispelled: N/A
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: Unknown cone
-- Notes:
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 1, 0, 60));
    return typeEffect;
end;
