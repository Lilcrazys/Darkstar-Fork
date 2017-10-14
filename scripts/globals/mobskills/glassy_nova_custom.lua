---------------------------------------------
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 78, 0, 60);
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_ICE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_1_SHADOW);
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

    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 78, 0, 60);

    target:delHP(dmg);
    return dmg;
end;
