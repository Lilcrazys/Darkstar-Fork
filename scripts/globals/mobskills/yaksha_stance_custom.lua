---------------------------------------------
-- Yaksha Stance
-- Naraka
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 0) then
        return 1;
    else
        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();
    local totalDispelled = 0;

    mob:setMod(MOD_DMGPHYS,-50);
    mob:setMod(MOD_DMGMAGIC,0);
    mob:addMod(MOD_MATT,-30);
    mob:addMod(MOD_ATT,150);
    mob:setLocalVar("stance", 0);

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