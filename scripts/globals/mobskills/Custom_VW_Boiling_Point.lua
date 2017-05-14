---------------------------------------------
--  Boiling Point
--  Description: Lowers the defense and magical defense of enemies within range.
--  Type: Magical (Dark)
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_DEFENSE_DOWN, 50, 0, 120);
    MobStatusEffectMove(mob, target, EFFECT_MAGIC_DEF_DOWN, 50, 0, 120);

	return typeEffect;
end;
