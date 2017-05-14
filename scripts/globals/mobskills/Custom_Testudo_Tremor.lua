---------------------------------------------
--  Testudo Tremor (Custom Version)
--
--  Description: A hot wind deals Fire damage to enemies within a very wide area of effect. Additional effect: Plague
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Range: 30' radial.
--  Notes: Used only by Tiamat, Smok and Ildebrann
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- if (mob:getPool() == POOL_ID_HERE) then
        local typeEffect = EFFECT_PLAGUE;
        local dmgmod = 2;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_FIRE,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_FIRE,MOBPARAM_WIPE_SHADOWS);

        MobStatusEffectMove(mob, target, typeEffect, 10, 0, 120);

        target:delHP(dmg);
        return dmg;
    -- else
        -- DSP version doesn't exist yet
        -- return 0;
    -- end
end;
