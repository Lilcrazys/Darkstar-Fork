-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Balaur
-- TODO: When its HP is under 50%, Balaur has a chance to gain
-- a spikes effect after using Breath attacks (matches element of breath)
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1900);

    -- addMod
    mob:addMod(MOD_EVA,-75);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    -- Uses different upgraded breath attack starting at 50% hp.
    if (mob:getHPP() <= 50) then
        mob:setMobMod(MOBMOD_SKILL_LIST, 790);
    else
        -- I'm assuming that if it heals up, it goes back to the other skill list.
        mob:setMobMod(MOBMOD_SKILL_LIST, 791);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 40;
    local SPELL_CHANCE = 40;

    if (math.random(0,99) < KI_CHANCE and player:hasKeyItem(ATMA_OF_STORMBREATH) == false) then
        player:addKeyItem(ATMA_OF_STORMBREATH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_STORMBREATH);
    end

    if (math.random(0,99) < SPELL_CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(695) == false) then
        player:addSpell(695);
    end
end;
