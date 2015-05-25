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

    mob:addStatusEffectEx(EFFECT_CURSE_SPIKES, 0, 0, 0, 90);
    skill:setMsg(101);

    return;
end;