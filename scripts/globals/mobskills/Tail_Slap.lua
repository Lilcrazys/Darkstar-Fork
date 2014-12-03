---------------------------------------------
--  Tail Slap
--
--  Description: Delivers an area attack. Additional effect: "Stun." Damage varies with TP.
--  Type: Physical (Blunt)
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function OnMobSkillCheck(target,mob,skill)
	local ID = mob:getID();
    if (ID == 16998862) then
	    return 1;
	end
	    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)

	local numhits = 1;
	local accmod = 1;
	local dmgmod = 2.2;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_ATK_VARIES,1,2,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

	local typeEffect = EFFECT_STUN;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 4);

	target:delHP(dmg);
	return dmg;
end;
