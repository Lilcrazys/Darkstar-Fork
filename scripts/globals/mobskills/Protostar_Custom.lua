---------------------------------------------
-- Shinryu
-- Protostar
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 33) then
            return 0;
        else
            return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)

	local dmgmod = 2;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 5,ELE_DARK,dmgmod,TP_MAB_BONUS,5);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	mob:resetEnmity(target);
	return dmg;
end;
