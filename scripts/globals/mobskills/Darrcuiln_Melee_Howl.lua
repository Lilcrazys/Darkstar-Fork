---------------------------------------------
-- Darrcuiln_Melee_Howl
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_WIND,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);
    MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 10, 0, 20);

    skill:setMsg(MSG_MELEE_AOE); -- AoE MSG
    -- skill:setMsg(MSG_MELEE); -- Single Target MSG

    target:delHP(dmg);
    return dmg;
end;
