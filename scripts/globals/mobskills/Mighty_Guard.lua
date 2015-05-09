---------------------------------------------------
--
-- Mighty Guard
--
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	mob:addStatusEffectEx(EFFECT_PHYSICAL_SHIELD,0,1,0,60)
    mob:addStatusEffect(EFFECT_REGAIN,10,3,60)
    skill:setMsg(MSG_SELF_HEAL);
    return MobHealMove(mob, mob:getMaxHP() * 0.05);
end;