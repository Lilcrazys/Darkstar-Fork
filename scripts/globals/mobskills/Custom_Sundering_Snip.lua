---------------------------------------------
--  Ravenous_Cracklaw_Sundering_Snip
--
--  Description: Damage varies with TP.
--  Type: Physical (Slashing)
--
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_AMNESIA;
    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 5, 0, 60);
    local numhits = 1;
    local accmod = .75;
    local dmgmod = math.random(1,4)+math.random();
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_WIPE_SHADOWS,info.hitslanded);

    -- keep damage around 700
    if (dmg > 1000) then
        dmg = dmg * 0.5;
    end

    target:delHP(dmg);
    return dmg;
end
