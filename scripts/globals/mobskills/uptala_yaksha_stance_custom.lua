---------------------------------------------
-- Yaksha Stance
-- Naraka
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();
    local totalDispelled = 0;

    if (dis1 ~= EFFECT_NONE) then
        totalDispelled = totalDispelled + 1;
    end

    if (dis2 ~= EFFECT_NONE) then
        totalDispelled = totalDispelled + 1;
    end

    if (totalDispelled == 0) then
        skill:setMsg(msgBasic.NO_EFFECT);
    else
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
    end

    return totalDispelled;
end;
