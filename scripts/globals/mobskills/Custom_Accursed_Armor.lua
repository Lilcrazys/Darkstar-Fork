---------------------------------------------
-- Accursed Armor
-- 
-- Description: Covers the user in curse spikes.
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- to make spikes effect immune to dispel, uncomment the setFlag() line
    mob:addStatusEffectEx(EFFECT_CURSE_SPIKES, EFFECT_DAMAGE_SPIKES, 1, 0, 90);
    -- mob:getStatusEffect(EFFECT_CURSE_SPIKES):setFlag(32);
    skill:setMsg(101);

    return 0;
end;