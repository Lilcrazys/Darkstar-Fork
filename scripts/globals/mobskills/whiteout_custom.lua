---------------------------------------------
-- Whiteout
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 3;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);
    local effect = nil;

    if (MobStatusEffectMove(mob, target, EFFECT_SLEEP_II, 10, 0, 60) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_SLEEP_II;
        skill:setMsg(msgBasic.ENFEEB_IS);
    end

    if (MobStatusEffectMove(mob, target, EFFECT_CURSE_I, 50, 0, 60) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_CURSE_I;
        skill:setMsg(msgBasic.ENFEEB_IS);
    end

    target:delHP(dmg);

    if (effect ~= nil) then
        return effect;
    end

    return dmg;
end;
