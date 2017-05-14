---------------------------------------------
--  Calcifying Claw
--
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local typeEffect = EFFECT_PETRIFICATION;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 30, 0, 45);

    local numhits = 1;
    local accmod = 10;
    local dmgmod = 2.1;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_WIPE_SHADOWS,info.hitslanded);
    target:delHP(dmg);
    return dmg;
end;
