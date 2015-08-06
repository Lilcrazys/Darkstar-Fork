---------------------------------------------
--  Crystaline Shower
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 75) then
        if ((mob:AnimationSub() == 1)) then
            return 0;
        else
            return 1;
        end
    end
end;

function onMobWeaponSkill(target, mob, skill)
	local dmgmod = 2;

    MobStatusEffectMove(mob, target, EFFECT_ADDLE, 10, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_SLOW, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DIA, 100, 3, 30);

	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_LIGHT,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;
