---------------------------------------------
--  Gallu
--  Bolt of Perdition

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 20, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_MUTE, 20, 0, 90);

    local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_ICE, 1100);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_ICE,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
