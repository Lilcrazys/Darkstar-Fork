---------------------------------------------
-- Fragor Maximus
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 30) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 3;
    local accmod = 10;
    local dmgmod = 1;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 1, 0, 30);

    return dmg;
end;
