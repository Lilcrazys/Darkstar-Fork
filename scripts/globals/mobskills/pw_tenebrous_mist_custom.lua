---------------------------------------------
-- Tenebrous Mist
--
-- Description: Resets TP of all targets in an area of effect.
-- Type: Enfeebling
-- Ignores Shadows
-- Range: Unknown radial
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local mobSkin = mob:getModelId();

    if (mobSkin == 1805) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
   local reset = 0;
   if (target:getTP() == 0) then
      skill:setMsg(msgBasic.NO_EFFECT); -- no effect
   else
      target:setTP(reset);
      skill:setMsg(msgBasic.TP_REDUCED);
   end
   return reset;
end;
