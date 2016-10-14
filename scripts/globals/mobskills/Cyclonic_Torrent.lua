---------------------------------------------
--  Cyclonic Torrent
--
--  Description: Area of Effect damage plus Mute to those in range.
--  Type: Enfeebling
--  Utsusemi/Blink absorb: Wipes Shadows
--  Range: 20' radial
--  Notes: Only used by Urd, Verthandi, and Carabosse.
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    --[[
    Broken Legion code..

    local dis1 = target:dispelStatusEffect();
    local dis2 = target:dispelStatusEffect();
    local dmgmod = 1.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_WIND,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);

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

    target:delHP(dmg);
    return dmg;

    Original DSP code below
    ]]

    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2.5;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);

    local typeEffect = EFFECT_MUTE;

    MobStatusEffectMove(mob, target, typeEffect, 1, 0, 60);

    return dmg;
end;
