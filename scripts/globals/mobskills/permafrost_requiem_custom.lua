---------------------------------------------
-- Kumhau
-- Permafrost Requiem
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_TERROR, 30, 0, 30);

    local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_ICE, 700);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
