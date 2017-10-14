---------------------------------------------------
-- Ravenous_Cracklaw_Rending_Deluge
-- Deals water elemental damage to enemies within area of effect.
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
    local typeEffect = EFFECT_MUTE;
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 6,ELE_WATER,dmgmod,TP_NO_EFFECT,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 30);

    --[[ Fix me: msg conflict
    if (dis1 ~= EFFECT_NONE and dis2 ~= EFFECT_NONE) then
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
        return 2;
    elseif (dis1 ~= EFFECT_NONE or dis2 ~= EFFECT_NONE) then
        -- dispeled only one
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
        return 1;
    else
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    end]]

    target:delHP(dmg);

    return dmg;
end
