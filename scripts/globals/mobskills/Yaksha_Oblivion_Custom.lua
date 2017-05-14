---------------------------------------------
--  Yaksha Oblivion (Custom version)
--  Naraka
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- This will need revisited if/when DSP ever implements this.
    local result = 1;
    if (mob:getLocalVar("stance") == 0) then
        if (mob:getHPP() <= 50) then
            result = 0;
        end
    end

    return result;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() == 9816 or mob:getPool() == 9880      -- Hahava, Uptala
    or mob:getPool() == 9036 or mob:getPool() == 9058) then -- Soaring_Naraka, Paramount_Naraka
        local numhits = 1;
        local accmod = 10;
        local dmgmod = 4.0;
        local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

        MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 110, 90, 60); -- Tick won't happen because effect will have worn off
        MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 110, 90, 60); -- This is intentional because tick of zero may be a prob.
        MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 110, 90, 60);
        MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 110, 90, 60);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);
        MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 110, 90, 60);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);

        target:delHP(dmg);
        return dmg;
    else
        -- DSP version doesn't exist yet.
        return 0;
    end
end;