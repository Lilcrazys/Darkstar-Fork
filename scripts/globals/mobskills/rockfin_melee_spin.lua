---------------------------------------------
-- Rockfin_Melee_Spin
-- Rockfin Special Melee
-- AoE Water damage and silence
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_WATER,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_WIPE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_SILENCE, 1, 0, 5);

    -- skill:setMsg(msgBasic.MELEE); -- Single Target MSG
    skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG

    target:delHP(dmg);
    target:addTP(1);
    mob:addTP(1);

    return dmg;
end;
