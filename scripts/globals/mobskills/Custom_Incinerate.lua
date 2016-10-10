---------------------------------------------------
-- Incinerator (custom version)
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 448) then -- Blazing Eruca
        local dmgmod = 2.3;
        -- punk has over 90k HP, which makes for some nasty math based damage. So we're going with "2.3" + "weaponDMG x3.2"..
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3.2,ELE_FIRE,dmgmod,TP_MAB_BONUS,1);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_FIRE,MOBPARAM_IGNORE_SHADOWS);

        MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_BURN, 5, 3, 30);

        target:delHP(dmg);
        return dmg;
    else -- DSP version, properly set by mobs HP/MaxHP ratio.
        local dmgmod = MobBreathMove(mob, target, 0.25, 0.75, ELE_FIRE);
        local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_FIRE,MOBPARAM_IGNORE_SHADOWS);

        target:delHP(dmg);
        return dmg;
    end
end;
