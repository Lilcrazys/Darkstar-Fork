---------------------------------------------
-- Polar Bulwark
--
-- Description: Grants a Magic Shield effect for a time.
-- Type: Enhancing
--
-- Range: Self
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local mobSkin = mob:getModelId();

    if (mobSkin == 1796) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    -- addEx to prevent dispel
    mob:addStatusEffectEx(EFFECT_MAGIC_SHIELD,0,1,0,45)
    skill:setMsg(msgBasic.BUFF)

    return EFFECT_MAGIC_SHIELD;
end;
