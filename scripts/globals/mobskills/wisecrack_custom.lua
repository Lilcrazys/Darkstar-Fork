---------------------------------------------------
-- Charm enemy
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_CHARM_I;
	local power = 0;

    if (not target:isPC()) then
        skill:setMsg(msgBasic.MISS);
        return typeEffect;
    end

    local msg = MobStatusEffectMove(mob, target, typeEffect, power, 3, 45)
    if (msg == msgBasic.ENFEEB_IS) then
        mob:charm(target);
    end
    skill:setMsg(msg);

    return typeEffect;
end;