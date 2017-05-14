---------------------------------------------------
-- Sickle Slash
-- Deals critical damage. Chance of critical hit varies with TP.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

---------------------------------------------------
-- onMobSkillCheck
-- Check for Grah Family id 122,123,124
-- if not in Spider form, then ignore.
---------------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 10;
	local dmgmod = math.random(3,5) + math.random();
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_CRIT_VARIES,1,1.5,2);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

	target:delHP(dmg);
	return dmg;
end;
