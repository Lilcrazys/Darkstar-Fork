---------------------------------------------
-- Tempest Wing
-- Bahamut
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	if (target:isBehind(mob, 48) == true) then
		return 1;
         else
                  return 0;
	end
end;

function onMobWeaponSkill(target, mob, skill)

         MobStatusEffectMove(mob, target, EFFECT_MAGIC_DEF_DOWN, 150, 0, 30);
         MobStatusEffectMove(mob, target, EFFECT_ATTACK_DOWN, 150, 0, 30);
         MobStatusEffectMove(mob, target, EFFECT_DEFENSE_DOWN, 150, 0, 30);

	local dmgmod = 1.1;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_WIND,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;
