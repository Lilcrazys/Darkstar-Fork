---------------------------------------------------
-- Crab Flying Punch
-- Heavy DMG+Knockback.
-- Can only use during Spirit Surge or Elemental Sforzo
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:hasStatusEffect(EFFECT_ELEMENTAL_SFORZO)
    or mob:hasStatusEffect(EFFECT_SPIRIT_SURGE)
    or mob:getLocalVar("wasMeritWS") == 1
    or mob:getLocalVar("wasTerror") == 1) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 2.4;
    local dmgmod = 5;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    if (dmg > 0) then
        mob:addTP(14);
    end

    target:delHP(dmg);
    return dmg;
end;