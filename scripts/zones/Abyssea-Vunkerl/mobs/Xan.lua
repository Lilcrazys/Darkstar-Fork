-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Xan
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
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

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,95);
    mob:addMod(MOD_MACC,800);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local CHANCE = 30;
    local SPELL_CHANCE = 40;

    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_SHIMMERING_SHELL) == false) then
        ally:addKeyItem(ATMA_OF_THE_SHIMMERING_SHELL);
        ally:messageSpecial(6385, ATMA_OF_THE_SHIMMERING_SHELL);
    end
    if (math.random(0,99) < SPELL_CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(692) == false) then
        ally:addSpell(692);
    end
end;

