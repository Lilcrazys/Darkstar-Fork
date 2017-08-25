-----------------------------------
-- Area: GM Testing Facilities
--  Mob: Dummy
-- never dies, never fights back, just takes dmg.
-----------------------------------
require("scripts/globals/spoofchat");
require("scripts/globals/status");

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    if (mob:getHP() < mob:getMaxHP()/2) then
        mob:setHP(mob:getMaxHP());
    end
end;

-----------------------------------
-- onMagicHit
-----------------------------------

function onMagicHit(caster, target, spell)
    player:SpoofMsg("Magic DMG Debug: placeholder", mob, MESSAGE_SAY, MESSAGE_SAY);

    return 1;
end;

-----------------------------------
-- onWeaponskillHit
-----------------------------------

function onWeaponskillHit(mob, attacker, weaponskill)
    player:SpoofMsg("WS DMG Debug: placeholder", mob, MESSAGE_SAY, MESSAGE_SAY);

    return 1;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:SpoofMsg("YOU CHEATING BASTID! ", mob, MESSAGE_SHOUT, MESSAGE_SHOUT);
end;
