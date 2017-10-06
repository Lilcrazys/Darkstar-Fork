---------------------------------------------
--  Eldritch_Wind
--  AoE damage, full dispel, Addle, and Plague
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Range: 30' radial.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dispel =  target:dispelAllStatusEffect(bit.bor(EFFECTFLAG_DISPELABLE, EFFECTFLAG_FOOD));

    if (dispel == 0) then
        -- no effect
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    else
        skill:setMsg(msgBasic.DISAPPEAR_NUM);
    end

	MobStatusEffectMove(mob, target, EFFECT_ADDLE, 60, 3, 90);
	MobStatusEffectMove(mob, target, EFFECT_PLAGUE, 30, 0, 90);

    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_FIRE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_FIRE,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
