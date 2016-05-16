-----------------------------------
-- Area: Abyssea - Konschtat (15)
--  Mob: Bloodguzzler
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/abyssea");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
    --[[ Need way to force target these NMs with insta kill TP attack liek retail.
    local FISTULE = GetMobByID(16838913);
    if (FISTULE ~= nil) then
        if (mob:checkDistance(FISTULE) < 6) then
            mob:hideName(false);
            mob:untargetable(false);
        end
    end
    ]]
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
