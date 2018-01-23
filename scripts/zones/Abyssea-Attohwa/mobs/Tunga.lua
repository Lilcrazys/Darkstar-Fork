-----------------------------------
-- Area: Abyssea - Attohwa (215)
--  Mob: Tunga
-----------------------------------

--require("scripts/globals/titles");
mixins = { require("scripts/mixins/families/chigoe") }
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------

function onMobSpawn(mob)
end;

function onMobEngaged(mob, target)
end;

function onMobDisengage(mob)
end;

function onMobDeath(mob, player, isKiller)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(DISTENDED_CHIGOE_ABDOMEN) == false) then
        player:addKeyItem(DISTENDED_CHIGOE_ABDOMEN);
        player:messageSpecial(KEYITEM_OBTAINED, DISTENDED_CHIGOE_ABDOMEN);
    end
end;
