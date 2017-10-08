-----------------------------------
-- Area: GM Testing Facilities
--  Mob: Dummy
-- never dies, never fights back, just takes dmg.
-----------------------------------
require("scripts/globals/msg");
require("scripts/globals/status");
require("scripts/globals/msg");

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
        target:SpoofMsg("is crying..", mob, chatType.EMOTION, chatType.PARTY);
        mob:setHP(mob:getMaxHP());
        target:SpoofMsg("Why you hitting me? What I ever do to you? ", mob, chatType.SAY, chatType.PARTY);
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    -- player:SpoofMsg("[Magic DMG Debug] placeholder", mob, chatType.ECHO, chatType.PARTY);

    return 1;
end;

-----------------------------------
-- onWeaponskillHit
-----------------------------------

function onWeaponskillHit(mob, attacker, weaponskill)
    attacker:SpoofMsg("[WS DMG Debug] placeholder", mob, chatType.ECHO, chatType.PARTY);

    return 1;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:SpoofMsg("YOU CHEATING BASTID! ", mob, chatType.SHOUT, chatType.SHOUT);
end;
