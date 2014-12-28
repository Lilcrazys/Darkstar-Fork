---------------------------------------------
--
-- Grace of Hera (Minerva's custom version)
--
-- Grants custom Light Spikes effect,
-- removes a harmful status effect
-- or Minerva heals for 9999 HP
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
    local erase = mob:eraseStatusEffect();
    -- why are the light spikes crashing on addMod() ?
    -- mob:addStatusEffectEx(EFFECT_MINERVA_LIGHT_SPIKES, EFFECT_REPRISAL, 1, 0, 600);

    if (mob:eraseStatusEffect() == EFFECT_NONE) then
        skill:setMsg(MSG_SELF_HEAL);
        return MobHealMove(mob, 9999);
    else
        skill:setMsg(MSG_DISAPPEAR);
        return erase
    end
end;
