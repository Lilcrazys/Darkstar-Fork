---------------------------------------------
--  Belly Dance
--
--  Description: Charms all targets in an area of effect, that are facing the Lamia.
--  Type: Enfeebling
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: 15' radial
--  Notes: Used only by Lamia NM's, particularly in Besieged.
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_CHARM_I;
	local power = 0;

    if (not target:isPC()) then
        skill:setMsg(MSG_MISS);
        return typeEffect;
    end

    local msg = MobStatusEffectMove(mob, target, typeEffect, power, 3, 45)
    if (msg == MSG_ENFEEB_IS) then
        mob:charm(target);
    end
    skill:setMsg(msg);

    return typeEffect;
end;