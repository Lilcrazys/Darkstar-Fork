---------------------------------------------
--
-- Fragor Maximus
--
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_EARTH, 0);
    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);
    local result = dmg;

    if (math.random(0,99) > target:getMod(MOD_DEATHRES)) then
        MobStatusEffectMove(mob, target, EFFECT_KO, 0, 0, 0);
        target:setHP(0);
        return EFFECT_KO;
    else
        target:delHP(dmg);
        return dmg;
    end
end;