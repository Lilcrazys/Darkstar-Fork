---------------------------------------------
-- Carcharian_verve
-- Rockfin
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
   return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobBuffMove(mob, EFFECT_DEFENSE_BOOST, 10, 0, 90);
    MobBuffMove(mob, EFFECT_ATTACK_BOOST, 10, 0, 90);
    skill:setMsg(MobBuffMove(mob, EFFECT_MAGIC_DEF_BOOST, 10, 0, 90));

    return EFFECT_MAGIC_DEF_BOOST;
end;
