---------------------------------------------------
-- Sandworms
-- Extreme Purgation
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dispel =  target:dispelAllStatusEffect(bit.bor(EFFECTFLAG_DISPELABLE, EFFECTFLAG_FOOD));

    if (dispel == 0) then
        -- no effect
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    else
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
    end

    mob:lowerEnmity(target, 70);

    return dispel;
end
