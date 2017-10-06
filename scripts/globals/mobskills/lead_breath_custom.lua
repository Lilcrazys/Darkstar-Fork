---------------------------------------------
--  Lead Breath
--
--  Description: Weighs down players.
--
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_WEIGHT;
    if (target:hasStatusEffect(typeEffect) == false) then
            target:addStatusEffect(typeEffect,50,0,300*resist);--power=12;tic=0;duration=60;
    else
        skill:setMsg(msgBasic.NO_EFFECT); -- no effect
    end

    return typeEffect;
end;
