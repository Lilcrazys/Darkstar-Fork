---------------------------------------------
--  Reaving Wind
--
--  Description: Resets TP of all targets in an area of effect.
--  Type: Enfeebling
--  Ignores Shadows
--  Range: Unknown radial
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local reset = 0;
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);

    if (target:getTP() == 0) then
       skill:setMsg(MSG_NO_EFFECT); -- no effect
    else
       target:setTP(reset);
       skill:setMsg(MSG_TP_REDUCED);
    end
    return dmg;
end;
