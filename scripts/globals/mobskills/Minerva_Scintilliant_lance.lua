---------------------------------------------
--  Scintilliant Lance (Minerva's custom version)
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
    local accmod = 1;
    local dmgmod = 1.8;
    local info = MobRangedMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_RANGED,MOBPARAM_PIERCE,info.hitslanded);
    mob:addStatusEffectEx(EFFECT_MINERVA_ENLIGHT, EFFECT_ENLIGHT, 1, 0, 600);
    target:addStatusEffect(EFFECT_STUN, 0, 0, 20);
    target:delHP(dmg);
    return dmg;
end;