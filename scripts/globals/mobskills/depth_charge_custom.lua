---------------------------------------------------
--  Depth Charge
--  Description:
--  Type: Magical
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)

end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_TERROR;
    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 5, 3, 15);
    local dmgmod = 2.5;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_WATER,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end
