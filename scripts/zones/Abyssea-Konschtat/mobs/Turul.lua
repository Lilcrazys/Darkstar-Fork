-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Turul
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------
path = {-13, 28, 305,
         180, 23, 333,
         293, 24, 332,
         360, 33, 383,
         417, 24, 370,
         443, 26, 219,
         372, 18, 104,
         219, 23, 111,
          20, 27, 219,
         -27, 20, 291};
function onMobSpawn(mob)
    OnMobRoam(mob);
end;
function onMobPath(mob)
    pathfind.patrol(mob, path);

end;
function onMobRoam(mob)
-- move to start position if not moving
    if(mob:isFollowingPath() == false) then
       mob:pathThrough(pathfind.first(path));
    end
    if (math.random(0,0) == 0) then
        mob:hideName(false);
        mob:untargetable(false);
        mob:AnimationSub(6);
        --mob:wait(10);
    else
        mob:hideName(true);
        mob:untargetable(true);
        mob:AnimationSub(6);
    end
end;
function onMobSpawn(mob)
    mob:addMod(MOD_MATT,80);
    mob:addMod(MOD_MACC,300);
end;
-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 17;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(AZURE_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(AZURE_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, AZURE_ABYSSITE_OF_MERIT);
    end
end;

