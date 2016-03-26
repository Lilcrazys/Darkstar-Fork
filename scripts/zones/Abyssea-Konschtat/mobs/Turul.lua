-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Turul
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/status");

-----------------------------------
-- Roam Path
-----------------------------------
local path =
{
    -- Needs corrected
    -13, 28, 305,
    180, 23, 333,
    293, 24, 332,
    360, 33, 383,
    417, 24, 370,
    443, 26, 219,
    372, 18, 104,
    219, 23, 111,
    20, 27, 219,
    -27, 20, 291
};

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- addMod
    mob:addMod(MOD_MATT,80);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_FASTCAST,40);

    -- Start Pathing
    onPath(mob);
end;

-----------------------------------
-- onPath
-----------------------------------

function onPath(mob)
    pathfind.patrol(mob, path);
end;

-----------------------------------
-- OnMobRoam
-----------------------------------

function onMobRoam(mob)
    local state = mob:AnimationSub();
    local FT = mob:getLocalVar("flyingTime");

    if (os.time() - FT > 45) then
        if (state == 0) then
            mob:untargetable(true);
            mob:AnimationSub(1);
            mob:hideName(true);
            mob:setLocalVar("flyingTime", os.time());
        elseif (state == 1) then
            mob:untargetable(false);
            mob:AnimationSub(0);
            mob:hideName(false);
            mob:setLocalVar("flyingTime", os.time());
        else
            -- Mob has windwall state from mobskill,
            -- so don't change AnimationSub value!
        end
    end

    -- move to start position if not moving
    if (mob:isFollowingPath() == false) then
        mob:pathThrough(pathfind.first(path));
    end
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:AnimationSub(0);
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(AZURE_ABYSSITE_OF_MERIT) == false) then
        ally:addKeyItem(AZURE_ABYSSITE_OF_MERIT);
        ally:messageSpecial(6385, AZURE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THE_STORMBIRD) == false) then
        ally:addKeyItem(ATMA_OF_THE_STORMBIRD);
        ally:messageSpecial(6385, ATMA_OF_THE_STORMBIRD);
    end
end;
