---------------------------------------------
--  Corpse Breath (Custom Version)
--
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- BEGIN TEMP
    if (mob:getPool() ~= 9804) then
        return 1; -- Fail it because the others do not exist yet.
    end
    -- END TEMP
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 9804) then -- Virvatuli (9804)
        local typeEffect = EFFECT_BLINDNESS;
        local dmgmod = 1;
        local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_EARTH,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_WIPE_SHADOWS);

        MobStatusEffectMove(mob, target, typeEffect, 30, 0, 60);

        target:delHP(dmg);
        return dmg;
    elseif (mob:getPool() == 9840 or mob:getPool() == 9882) then -- GwynnApnudd (9840) / Bloody Skull (9882)
        -- Doesn't exist yet.
        return 0;
    else -- DSP version, regular non NM mobs should use this.
        -- Doesn't exist yet.
        return 0;
    end
end;