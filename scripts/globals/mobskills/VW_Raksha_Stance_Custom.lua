---------------------------------------------
--  Raksha Stance
--  Naraka
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 1) then
        return 1;
    else
        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)

    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();

    if (dis1 ~= EFFECT_NONE and dis2 ~= EFFECT_NONE) then
        skill:setMsg(MSG_DISAPPEAR_NUM);
        return 2;
    elseif (dis1 ~= EFFECT_NONE or dis2 ~= EFFECT_NONE) then
        -- dispeled only one
        skill:setMsg(MSG_DISAPPEAR_NUM);
        return 1;
    else
        skill:setMsg(MSG_NO_EFFECT); -- no effect
    end
    mob:setMod(MOD_DMGPHYS,0);
    mob:setMod(MOD_DMGMAGIC,-128);
    mob:addMod(MOD_MATT,30);
    mob:addMod(MOD_ATT,-150);
    mob:setLocalVar("stance", 1);
    return 0;
end;