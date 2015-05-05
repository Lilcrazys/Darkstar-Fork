---------------------------------------------
--  Yaksha Stance
--  Naraka
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

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

    if(dis1 ~= EFFECT_NONE and dis2 ~= EFFECT_NONE) then
        skill:setMsg(MSG_DISAPPEAR_NUM);
        return 2;
    elseif(dis1 ~= EFFECT_NONE or dis2 ~= EFFECT_NONE) then
        -- dispeled only one
        skill:setMsg(MSG_DISAPPEAR_NUM);
        return 1;
    else
        skill:setMsg(MSG_NO_EFFECT); -- no effect
    end
    mob:setMod(MOD_DMGPHYS,-50);
    mob:setMod(MOD_DMGMAGIC,0);
    mob:setLocalVar("stance", 0);
    return 0;
end;