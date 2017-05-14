---------------------------------------------------
-- Euhedral Swat
-- Deals extreme damage in a threefold attack to targets behind the user.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (target:isBehind(mob) == false) then
        if ((mob:AnimationSub() == 2)) then
            return 0;
        else
            return 1;
        end
    end
end;

function onMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 12;
	local dmgmod = math.random(5,7);

    MobStatusEffectMove(mob, target, EFFECT_ATTACK_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEFENSE_DOWN, 50, 0, 60);

	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,2,3,4);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);
	target:delHP(dmg);
	return dmg;
end;
