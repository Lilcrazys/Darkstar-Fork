---------------------------------------------
-- Fatal Scream
--
-- Description: AoE Doom.
-- Fatal Scream radius increases asHP is lowered,
-- reaching an approximate maximum of 20 yalms. (not implemented)
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    -- Retail doesn't seem to have this HP check
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_DOOM;

    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 3, 30));

    return typeEffect;
end;
