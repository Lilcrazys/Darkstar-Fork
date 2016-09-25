---------------------------------------------------
-- Rail Cannon (custom version)
-- Description: Fires a high-velocity cannon at players.
-- Type: Magical
-- Utsusemi/Blink absorb: See below
-- Range: 20'
-- Note: The behavior of this attack depends on how many of the Gears are present in the cluster.
--  1 Gear: Rail Cannon is single target and ignores Utsusemi
--  2 Gears: Rail Cannon is directional (fan-shaped) AoE and ignores Utsusemi
--  3 Gears: Rail Cannon is AoE and strips Utsusemi
-- Note: This ability cannot be stunned by magic or job ability
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*1.5,ELE_NONE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_WIPE_SHADOWS);
    -- Todo: check animation to choose which of the 3 version to do instead of this.
    target:delHP(dmg);
    return dmg;
end
