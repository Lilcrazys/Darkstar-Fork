-----------------------------------
-- Area: Abyssea - Attohwa (215)
--  Mob: Tunga
-----------------------------------

--require("scripts/globals/titles");
mixins = { require("scripts/mixins/families/chigoe") }
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(DISTENDED_CHIGOE_ABDOMEN) == false) then
        player:addKeyItem(DISTENDED_CHIGOE_ABDOMEN);
        player:messageSpecial(6385, DISTENDED_CHIGOE_ABDOMEN);
    end
end;
