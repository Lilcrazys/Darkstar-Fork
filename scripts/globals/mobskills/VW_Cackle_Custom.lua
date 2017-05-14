---------------------------------------------
--  Bilfrost_Squall
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

    MobStatusEffectMove(mob, target, EFFECT_MAGIC_ACC_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MAGIC_ATK_DOWN, 20, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MAGIC_DEF_DOWN, 50, 0, 60);

    target:delHP(dmg);
    return dmg;
end;
