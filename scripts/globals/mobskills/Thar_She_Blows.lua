---------------------------------------------
--
-- Thar She Blows
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
    local typeEffect = EFFECT_KO;
    -- target:SpoofChatParty( "..3...2...1.." MESSAGE_SAY )
    if (math.random(0,99) > target:getMod(MOD_DEATHRES)) then
        MobStatusEffectMove(mob, target, typeEffect, 0, 0, 0);
        target:setHP(0);
    else
        typeEffect = EFFECT_NONE;
        skill:setMsg(282);
    end

    return typeEffect;
end;