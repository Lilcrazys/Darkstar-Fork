---------------------------------------------
-- Minerva Custom Buff (Ambrosia)
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(0);
    mob:addStatusEffect(EFFECT_FOOD,0,0,14400,4511);
    return 0;
end;
