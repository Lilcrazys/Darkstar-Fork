---------------------------------------------------
-- Shinryu
-- Gyre Charghe
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:AnimationSub() == 1) then 
        return 0;
    else 
        return 1;
    end  
end;

function onMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 10;
	local dmgmod = 1;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);
	target:delHP(dmg);
    MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 10, 0, 60);
	return dmg;
end;
