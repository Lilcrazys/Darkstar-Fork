---------------------------------------------
-- Fantod
--
-- Description: Enhances attack and magic attack
-- Type: Enhancing
--
-- Range: Self
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobBuffMove(mob, EFFECT_MAGIC_ATK_BOOST, 30, 0, 120);
    skill:setMsg(MobBuffMove(mob, EFFECT_ATTACK_BOOST, 30, 0, 120));

    return EFFECT_ATTACK_BOOST;
end;
