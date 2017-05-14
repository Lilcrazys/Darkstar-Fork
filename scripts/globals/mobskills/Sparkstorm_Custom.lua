---------------------------------------------------
-- Sparkstorm
-- Hurkan
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dmgmod = 1;

    MobStatusEffectMove(mob, target, EFFECT_MAGIC_DEF_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MAX_MP_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MAX_HP_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_ATTACK_DOWN, 50, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEFENSE_DOWN, 50, 0, 60);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 4,ELE_THUNDER,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;