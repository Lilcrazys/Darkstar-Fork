---------------------------------------------------
-- Sanngetall
-- Dispels all buffs including food. Lowers Enmity.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dispel = target:dispelAllStatusEffect(bit.bor(EFFECTFLAG_DISPELABLE, EFFECTFLAG_FOOD));

    if (dispel == EFFECT_NONE) then
        -- no effect
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    else
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
    end

    mob:lowerEnmity(target, 70);

    return dispel;
end;
