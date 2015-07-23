---------------------------------------------------
-- Soothing Aroma
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_CHARM_I;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 10, 0, 90));

	return typeEffect;
end;
