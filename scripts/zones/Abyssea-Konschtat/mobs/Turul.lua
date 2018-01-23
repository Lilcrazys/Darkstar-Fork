-----------------------------------
-- Area: Abyssea - Konschtat (15)
--   Mob: Turul
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/status");
--[[
mixins = { require("scripts/mixins/families/amphiptere") }
]]

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

function onMobSpawn(mob)
    -- addMod
    mob:addMod(MOD_MATT,80);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_FASTCAST,40);

    -- Start Pathing
    mob:AnimationSub(1);
    onPath(mob);
end;


function onPath(mob)
    local FT = mob:getLocalVar("flyingTime");

    if (os.time() - FT > 40) then
        -- Anything other than 1 or 0 is the animation state from Wind Wall
        if (mob:AnimationSub() == 0) then
            mob:AnimationSub(1);
            mob:setLocalVar("flyingTime", os.time());
        elseif (mob:AnimationSub() == 1) then
            mob:AnimationSub(0);
            mob:setLocalVar("flyingTime", os.time());
        end
    end

    if (mob:AnimationSub() == 1) then
        mob:hideName(true);
        mob:untargetable(true);
        pathfind.patrol(mob, path);
    else
        mob:hideName(false);
        mob:untargetable(false);
    end
end;

function onMobRoam(mob)
    local FT = mob:getLocalVar("flyingTime");

    if (os.time() - FT > 40) then
        -- Anything other than 1 or 0 is the animation state from Wind Wall
        if (mob:AnimationSub() == 0) then
            mob:AnimationSub(1);
            mob:setLocalVar("flyingTime", os.time());
        elseif (mob:AnimationSub() == 1) then
            mob:AnimationSub(0);
            mob:setLocalVar("flyingTime", os.time());
        end
    end

    if (mob:AnimationSub() == 1) then
        mob:hideName(true);
        mob:untargetable(true);
        -- Move to start position if not moving
        if (mob:isFollowingPath() == false) then
            mob:pathThrough(pathfind.first(path));
        end
    else
        mob:hideName(false);
        mob:untargetable(false);
    end
end;

function onMobEngaged(mob, target)
    mob:AnimationSub(0);
    mob:hideName(false);
    mob:untargetable(false);
end;

function onMobDisengage(mob)
end;

function onMobFight(mob,target)
    -- Uncertain of threshold. Going with 50% for now.
    -- (possibly varies, perhaps is simply lower HP = greater cast chance?)
    if (mob:getHPP() <=50) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 175);
    else
        -- I'm assuming that if it heals up, it goes back to the other spell list.
        mob:setMobMod(MOBMOD_SPELL_LIST, 174);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

function onSpellPrecast(mob, spell)
    --[[
    Todo:
    "Turul will often cast Thunder based spells on itself to recover HP."
    One way of handling this would be treating ele nuke heals like we do melee special (use its own list)
    and setting absorb element 100% chance. This would let us use the AI's already existing "heal chance"
    https://github.com/DarkstarProject/darkstar/blob/638b9018e563f98ceddf05d642b6e3db055ccc36/src/map/mob_spell_container.cpp#L124
    ]]
end;

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(AZURE_ABYSSITE_OF_MERIT) == false) then
        player:addKeyItem(AZURE_ABYSSITE_OF_MERIT);
        player:messageSpecial(KEYITEM_OBTAINED, AZURE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_STORMBIRD) == false) then
        player:addKeyItem(ATMA_OF_THE_STORMBIRD);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_STORMBIRD);
    end
end;

function onMobDespawn(mob)
end;
