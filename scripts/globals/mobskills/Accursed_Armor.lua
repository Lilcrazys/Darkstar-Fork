---------------------------------------------
--  Accursed  Armor
--
--  Description: Covers the user in curse spikes.
--  Type: Enhancing
--  Utsusemi/Blink absorb: N/A
--  Range: Self
--  Notes:
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- Removing any and all possible spike effects, just in case.
    if (mob:hasStatusEffect(EFFECT_DAMAGE_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_DAMAGE_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_BLAZE_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_BLAZE_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_ICE_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_ICE_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_SHOCK_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_SHOCK_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_DREAD_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_DREAD_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_DELUGE_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_DELUGE_SPIKES);
    end

    -- Custom ones too!
    if (mob:hasStatusEffect(EFFECT_WIND_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_WIND_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_STONE_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_STONE_SPIKES);
    end
    if (mob:hasStatusEffect(EFFECT_DARK_SPIKES)) then
        mob:delStatusEffectSilent(EFFECT_DARK_SPIKES);
    end

    -- Now setting Curse Spikes on, and setting stop time to now +90 seconds.
    mob:setLocalVar("CurseSpikes", 1);
    mob:setLocalVar("SpikesDuration", mob:getBattleTime()+90);

    return;
end;