---------------------------------------------
--  Grim Reaper
--
--  Description: Deals damage in a threefold attack to targets in a fan-shaped area of effect. Additional effect: Doom
--  Type: Physical
--  Utsusemi/Blink absorb: 2-3 shadows
--  Range: Unknown cone
--  Notes: Used only by certain Lamia NMs (e.g. Lamia No.3). If they lost their staff, they'll use Hysteric Barrage instead.
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();


    if (dis1 ~= EFFECT_NONE and dis2 ~= EFFECT_NONE) then
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
        return 2;
    elseif (dis1 ~= EFFECT_NONE or dis2 ~= EFFECT_NONE) then
        -- dispeled only one
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
        return 1;
    else
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    end

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 78, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 78, 0, 60);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_ICE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_1_SHADOW);
    target:delHP(dmg);
    return dmg;
end;
