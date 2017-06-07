---------------------------------------------------
-- Crepuscle_Blade
-- Skele VW Special

---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 2;
    local accmod = 10;
    local dmgmod = 1;

	MobStatusEffectMove(mob, target, EFFECT_CURSE_I, 50, 0, 60);
	MobStatusEffectMove(mob, target, EFFECT_BIO, 100, 3, 60);

    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,1.5,2);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);
    target:delHP(dmg);
    return dmg;
end;
