---------------------------------------------------
-- Sakra Storm
--
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 4.0;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

    MobStatusEffectMove(mob, target, EFFECT_CURSE_I, 50, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_MUDDLE, 10, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 25, 0, 60);


    target:delHP(dmg);
    return dmg;
end;
