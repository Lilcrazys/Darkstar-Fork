---------------------------------------------
-- Gallu melee front
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)

	local numhits = 3;
	local accmod = 10;
	local dmgmod = 0.3;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,MOBPARAM_3_SHADOW,info.hitslanded);

    if (math.random(1,10) > 5) then -- 1 in chance of 1 second stun just to interup spells.
        target:addStatusEffect(EFFECT_DEFENSE_DOWN, 20, 0, 30);
    end

    target:addTP(-1);
    mob:addTP(1);

    target:delHP(dmg);
    skill:setMsg(1);
	return dmg;
end;
