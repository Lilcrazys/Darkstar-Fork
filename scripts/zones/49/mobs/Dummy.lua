-----------------------------------
-- Area: GM Testing Facilities
--  Mob: Dummy
-- never dies, never fights back, just takes dmg.
-----------------------------------
require("scripts/globals/spoofchat");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:SetMobSkillAttack(9999); -- Disables melee
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    if (mob:getHP() < mob:getMaxHP()/2) then
        target:SpoofMsg("is crying..", mob, MESSAGE_EMOTION, MESSAGE_PARTY);
        mob:setHP(mob:getMaxHP());
        target:SpoofMsg("Why you hitting me? What I ever do to you? ", mob, MESSAGE_SAY, MESSAGE_PARTY);
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    -- player:SpoofMsg("[Magic DMG Debug] placeholder", mob, MESSAGE_ECHO, MESSAGE_PARTY);

    return 1;
end;

-----------------------------------
-- onWeaponskillHit
-----------------------------------

function onWeaponskillHit(mob, attacker, weaponskill)
    attacker:SpoofMsg("[WS DMG Debug] placeholder", mob, MESSAGE_ECHO, MESSAGE_PARTY);

    return 1;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:SpoofMsg("YOU CHEATING BASTID! ", mob, MESSAGE_SHOUT, MESSAGE_SHOUT);
end;
