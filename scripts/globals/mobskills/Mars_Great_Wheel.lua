---------------------------------------------
-- Great Wheel (Mars Custom Version)
--
-- Wipes Shadows and damages enemies in an area of effect.
-- Grants potent Endark to Mars
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 1;
	local dmgmod = 2.0;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

	if (mob:hasStatusEffect(EFFECT_ENDARK)) then
		mob:delStatusEffectSilent(EFFECT_ENDARK);
	elseif (mob:hasStatusEffect(EFFECT_EWATER)) then
		mob:delStatusEffectSilent(EFFECT_ENWATER);
	elseif (mob:hasStatusEffect(EFFECT_ENTHUNDER)) then
		mob:delStatusEffectSilent(EFFECT_ENTHUNDER);
	elseif (mob:hasStatusEffect(EFFECT_ENSTONE)) then
		mob:delStatusEffectSilent(EFFECT_ENSTONE);
	elseif (mob:hasStatusEffect(EFFECT_ENAERO)) then
		mob:delStatusEffectSilent(EFFECT_ENAERO);
	elseif (mob:hasStatusEffect(EFFECT_ENBLIZZARD)) then
		mob:delStatusEffectSilent(EFFECT_ENBLIZZARD);
	elseif (mob:hasStatusEffect(EFFECT_ENFIRE)) then
		mob:delStatusEffectSilent(EFFECT_ENFIRE);
	end
	mob:addStatusEffect(EFFECT_ENDARK,65, 0, 60);
	target:delHP(dmg);

	return dmg;
end;
