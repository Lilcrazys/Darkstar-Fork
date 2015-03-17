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

    if (math.random(0,99) > target:getMod(MOD_DEATHRES)) then
        skill:setMsg(243); -- Effect of KO
        target:setHP(0);
        return EFFECT_KO;
    else
        target:delHP(dmg);
        return dmg;
    end
end;