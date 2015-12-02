---------------------------------------------
--  Preying Posture
--  Type: Enhancing
--  Utsusemi/Blink absorb: N/A
--  Range: Self
--  Notes: 50% Attack Boost, MATT, ACC
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MobBuffMove(mob, EFFECT_ATTACK_BOOST, 50, 0, 180));
    skill:setMsg(MobBuffMove(mob, EFFECT_MAGIC_ATK_BOOST, 25, 0, 180));
    skill:setMsg(MobBuffMove(mob, EFFECT_ACCURACY_BOOST, 50, 0, 180));
    return typeEffect;
end;
