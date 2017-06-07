---------------------------------------------------
-- Yggr
-- Odin
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1; -- Disabled
end;

function onMobWeaponSkill(target, mob, skill)
--[[

  YOU CAN'T FUCKING USE MODS IN PLACE OF EFFECTS DUMBSHIT
    I am seriously sick of telling people this.

    local typeEffect = MOD_HUMANOID_KILLER;
    skill:setMsg(MobBuffMove(mob, typeEffect, 10, 0, 90));
    return typeEffect;
]]
end;
