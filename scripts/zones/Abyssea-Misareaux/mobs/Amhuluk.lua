-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Amhuluk
-----------------------------------

require("scripts/globals/pathfind");
require("scripts/zones/Abyssea-Misareaux/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- Roam Path
-----------------------------------
    local path =
    {
        49, -7, -54,
        9, -15, -35,
        61, -15, 53,
        90, -15, -19,
        105, 24, 370,
        105, -7, -100,
        67, -7, -93,
    };


-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- setMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:AnimationSub(13);
    mob:hideName(true);
    mob:untargetable(true);
end;

-----------------------------------
-- OnMobPath
-----------------------------------

function onMobPath(mob)
    pathfind.patrol(mob, path);
end;

-----------------------------------
-- OnMobRoam
-----------------------------------
function onMobRoam(mob)
-- move to start position if not moving
    if(mob:isFollowingPath() == false) then
        mob:pathThrough(pathfind.first(path));
    else
        mob:AnimationSub(13);
        mob:hideName(true);
        mob:untargetable(true);
    end
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:AnimationSub(4);
    mob:hideName(false);
    mob:untargetable(false);
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_STRANGLING_WIND) == false) then
        killer:addKeyItem(ATMA_OF_THE_STRANGLING_WIND);
        killer:messageSpecial(6385, ATMA_OF_THE_STRANGLING_WIND);
    end
end;
