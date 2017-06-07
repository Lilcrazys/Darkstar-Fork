---------------------------------------------------
-- Filamented Hold
-- Reduces the attack speed of enemies within a fan-shaped area originating from the caster.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local dmgmod = 10;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg(),ELE_DARK,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);

    if (target:isUndead() == false) then
        target:delHP(dmg);
        mob:addHP(dmg);
        skill:setMsg(MSG_DRAIN_HP);
    else
        skill:setMsg(MSG_NO_EFFECT);
    end
	return dmg;
end;
