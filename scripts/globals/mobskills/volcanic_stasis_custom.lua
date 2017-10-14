---------------------------------------------
-- Volcanic Stasis
-- Gabbrath
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_FIRE,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_LIGHT,MOBPARAM_IGNORE_SHADOWS);
    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();

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

    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_STUN, 5, 3, 15);

    target:delHP(dmg);
    return dmg;
end
